using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using OrderDetailsStatusConsoleApp.Classes;
using OrderDetailsStatusConsoleApp.Data;
using OrderDetailsStatusConsoleApp.Models;
using Spectre.Console;

namespace OrderDetailsStatusConsoleApp
{
    partial class Program
    {
        static async Task Main(string[] args)
        {
            int identifier = 10248;
            int[] identifiers = { 2, 3 };

            var statusTable = new Table()
                .RoundedBorder()
                .AddColumn("[b]Product name[/]")
                .AddColumn("[b]Product status[/]")
                .Alignment(Justify.Center)
                .BorderColor(Color.LightSlateGrey)
                .Title($"[LightGreen]Order details for {identifier} for statuses {string.Join(" ", identifiers)}[/]");

            var statusCodesTable = new Table()
                .RoundedBorder()
                .AddColumn("[b]Key[/]")
                .AddColumn("[b]Description[/]")
                .Alignment(Justify.Center)
                .BorderColor(Color.LightSlateGrey)
                .Title($"[LightGreen]Statuses[/]");

            var orderDetailsList = await DataOperations.OrdersDetailsListTask(identifier, identifiers);
            if (orderDetailsList.Count > 0)
            {
                foreach (var item in orderDetailsList)
                {
                    statusTable.AddRow(item.Product.ProductName, item.Status.Description);
                }
                AnsiConsole.Write(statusTable);
            }
            else
            {
                Console.WriteLine("No matches");
            }

            Console.WriteLine();

            var statusCodes = await DataOperations.OrderStatusList();
            foreach (var code in statusCodes)
            {
                statusCodesTable.AddRow(code.StatusId.ToString(), code.Description);
            }

            AnsiConsole.Write(statusCodesTable);
            Console.ReadLine();
        }


    }
}
