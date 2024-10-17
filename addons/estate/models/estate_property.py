from odoo import fields, models

class EstateProperty(models.Model):
    _name = "estate.estateproperty"
    _description = "The Estate property"

    name = fields.Char('Estate property',required=True)
