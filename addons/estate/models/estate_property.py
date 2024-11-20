from datetime import date, timedelta
from odoo import fields, models

class EstateProperty(models.Model):
    _name = "estate.property"
    _description = "The Estate Property"

    name = fields.Char('Name', required=True)
    postcode = fields.Char('Post Code', required=False)
    date_availability = fields.Date('Date Availability', required=False,copy=False,
                                    default=lambda self: date.today() + timedelta(days=90)
)
    expected_price = fields.Float('Expected Price', required=True)
    selling_price = fields.Float('Selling Price', required=False,readonly=True,copy=False)
    bedrooms = fields.Integer('Bedrooms', required=False,default=2)
    living_area = fields.Integer('Living Area', required=True)
    facades = fields.Integer('Facades', required=False)
    garage = fields.Boolean('Garage', required=False)
    garden = fields.Boolean('Garden', required=False)
    garden_area = fields.Integer('Garden Area', required=False)
    garden_orientation = fields.Selection(
        selection=[
            ('north', 'North'),
            ('south', 'South'),
            ('east', 'East'),
            ('west', 'West')
        ],
        string='Garden Orientation',
        required=False
    )
    active=fields.Boolean(default=False)
    state=fields.Selection(selection=[('new','New'),('received','Offer Received'),('acepted','Offer Acepted'),('sold','Sold'),('cancel','Cancel')],        
                           required=True,copy=False,default='new'
)
