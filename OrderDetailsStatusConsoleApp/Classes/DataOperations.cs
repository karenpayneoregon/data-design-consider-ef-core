using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using OrderDetailsStatusConsoleApp.Data;
using OrderDetailsStatusConsoleApp.Models;

namespace OrderDetailsStatusConsoleApp.Classes
{
    public class DataOperations
    {
        /// <summary>
        /// Get order detail status for products in an order
        /// </summary>
        /// <param name="orderId">order id</param>
        /// <param name="identifiers">statues</param>
        /// <returns>list of order details</returns>
        public static async Task<List<OrderDetails>> OrdersDetailsListTask(int orderId, int[] identifiers)
        {
            await using var context = new NorthContext();

            /*
             * We could simple return the following but for learning this allows a developer to examine results via the debugger
             */
            var data = context
                .OrderDetails
                .Include(od => od.Product)
                .Include(od => od.Status)
                .Where(od =>
                    od.OrderId == orderId &&
                    identifiers.Contains(od.Status.StatusId))
                .ToListAsync();

            return await data;
        }

        /// <summary>
        /// Get all status
        /// </summary>
        /// <returns>list of OrderStatus</returns>
        /// <remarks>
        /// Note ToString is overridden suitable for user interfaces
        /// </remarks>
        public static async Task<List<OrderStatus>> OrderStatusList()
        {
            await using var context = new NorthContext();
            return await context.OrderStatus.ToListAsync();
        }

        /// <summary>
        /// Get a single customer
        /// </summary>
        /// <param name="identifier"></param>
        /// <returns></returns>
        public static async Task<Customers> Customers(int identifier)
        {
            await using var context = new NorthContext();
            return await context
                .Customers
                .Include(x => x.Orders)
                .ThenInclude(x => x.OrderDetails)
                .FirstOrDefaultAsync(x => x.CustomerIdentifier == identifier);

        }

    }
}