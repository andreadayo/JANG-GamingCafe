/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Group 6 - 2CSA
 */
public class ProductInfo {
    public String getDesc(String type) {
        String desc = "";
        if (type.equals("Frappe")) {
            desc = "A frappé is an iced beverage that has been shaken blended or beaten to produce a tasty, foamy, and refreshing drink.";
        } else if (type.equals("Milktea")) {
            desc = "It is a combination of black tea, milk, a sweetener of some sort, and tapioca pearls.";
        } else if (type.equals("Cappuccino")) {
            desc = "The perfect balance of espresso, steamed milk and foam. ";    
        } else if (type.equals("Coffee")) {
            desc = "A beverage brewed from the roasted and ground seeds of the tropical evergreen coffee plant.";
        } else if (type.equals("Fruit Juice")) {
            desc = "It is 100% pure juice made from the flesh of fresh fruit or from whole fruit, depending on the type used.";
        } else if (type.equals("Soft drink")) {
            desc = "Sweet, fizzy, refreshing and alcohol-free drink which consists of carbonated water with added syrup made from sugar and fruit extracts";
        } else if (type.equals("Donut")) {
            desc = "A kind of fried dough confectionery. Donuts are typically ring shaped with a hole in the middle.";
        } else if (type.equals("Croissant")) {
            desc = "A laminated, yeast-leavened bakery product that contains dough/roll-in fat layers to create a flaky, crispy texture.";
        } else {
            desc = null;
        }
        return desc;
    }
    
    public int getPrice(String type) {
        int price = 0;
        if (type.equals("Frappe")) {
            price = 130;
        } else if (type.equals("Milktea")) {
            price = 150;
        } else if (type.equals("Cappuccino")) {
            price = 150;
        } else if (type.equals("Coffee")) {
            price = 80;
        } else if (type.equals("Fruit Juice")) {
            price = 140;
        } else if (type.equals("Soft drink")) {
            price = 70;
        } else if (type.equals("Donut")) {
            price = 90;
        } else if (type.equals("Croissant")) {
            price = 100;
        } else {
            price = 0;
        }
        return price;
    }
    
    public int getStock(String type) {
        int stock = -1;
        if (type.equals("Frappe")) {
            stock = 26;
        } else if (type.equals("Milktea")) {
            stock = 33;
        } else if (type.equals("Cappuccino")) {
            stock = 40;
        } else if (type.equals("Coffee")) {
            stock = 22;
        } else if (type.equals("Fruit Juice")) {
            stock = 45;
        } else if (type.equals("Soft drink")) {
            stock = 0;
        } else if (type.equals("Donut")) {
            stock = 13;
        } else if (type.equals("Croissant")) {
            stock = 18;
        } else {
            stock = 0;
        }
        return stock;
    }
    
    public String getImage(String type) {
        String image = "";
        if (type.equals("Frappe")) {
            image = "frappe.png";
        } else if (type.equals("Milktea")) {
            image = "milktea.png";
        } else if (type.equals("Cappuccino")) {
            image = "cappucino.png";
        } else if (type.equals("Coffee")) {
            image = "coffee.png";
        } else if (type.equals("Fruit Juice")) {
            image = "fruitJuice.png";
        } else if (type.equals("Soft drink")) {
            image = "softDrink.png";
        } else if (type.equals("Donut")) {
            image = "donut.png";
        } else if (type.equals("Croissant")) {
            image = "crossaint.png";
        } else {
            image = "";
        }
        return image;
    }
}
