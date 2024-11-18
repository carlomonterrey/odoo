# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
{
    'name': 'estate',
    'category': 'Marketing',
    'description': 'estate module',
    'version': '0.1',
    'depends': [
        'base'
    ],
     'installable': True,
    'auto_install': False,
        'application': True,
        'data':[
                 'security/ir.model.access.csv',
    'views/estate_property_views.xml',
],
       

    
    'license': 'LGPL-3',
}
