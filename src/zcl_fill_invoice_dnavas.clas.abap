CLASS zcl_fill_invoice_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_invoice_dnavas IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DELETE FROM zdt_com_inv_dnaV.
    MODIFY zdt_com_inv_dnav FROM TABLE @( VALUE #( (  invoice_id = '1'
                                                   customer_name = cl_abap_context_info=>get_user_technical_name( )
                                                   inv_amount =  '10.00'
                                                   currency = 'EUR'
                                                   department = '100'
                                                   created_by = cl_abap_context_info=>get_user_technical_name( )
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                                 (  invoice_id = '2'
                                                   customer_name = cl_abap_context_info=>get_user_technical_name( )
                                                   inv_amount =  '10.00'
                                                   currency = 'USD'
                                                   department = '100'
                                                   created_by = cl_abap_context_info=>get_user_technical_name( )
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                                (  invoice_id = '3'
                                                   customer_name = cl_abap_context_info=>get_user_technical_name( )
                                                   inv_amount =  '300.00'
                                                   currency = 'EUR'
                                                   department = '300'
                                                   created_by = cl_abap_context_info=>get_user_technical_name( )
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                                (  invoice_id = '4'
                                                   customer_name = cl_abap_context_info=>get_user_technical_name( )
                                                   inv_amount =  '4000.00'
                                                   currency = 'USD'
                                                   department = '4100'
                                                   created_by = cl_abap_context_info=>get_user_technical_name( )
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                               (   invoice_id = '5'
                                                   customer_name = cl_abap_context_info=>get_user_technical_name( )
                                                   inv_amount =  '1000.00'
                                                   currency = 'EUR'
                                                   department = '500'
                                                   created_by = cl_abap_context_info=>get_user_technical_name( )
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                             (   invoice_id = '6'
                                                   customer_name = 'CB998000015X'
                                                   inv_amount =  '6000.00'
                                                   currency = 'USD'
                                                   department = '600'
                                                   created_by = 'CB998000015X'
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                               (   invoice_id = '7'
                                                   customer_name = 'CB998000015A'
                                                   inv_amount =  '3000.00'
                                                   currency = 'EUR'
                                                   department = '100'
                                                   created_by = 'CB998000015A'
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                                 (   invoice_id = '8'
                                                   customer_name = 'CB998000015A'
                                                   inv_amount =  '8000.00'
                                                   currency = 'EUR'
                                                   department = '800'
                                                   created_by = 'CB998000015A'
                                                   create_date = cl_abap_context_info=>get_system_date( ) )


                                                (   invoice_id = '9'
                                                   customer_name = 'CB998000015A'
                                                   inv_amount =  '9000.00'
                                                   currency = 'EUR'
                                                   department = '900'
                                                   created_by = 'CB998000015A'
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                                (   invoice_id = '10'
                                                   customer_name = 'CB998000015B'
                                                   inv_amount =  '3000.00'
                                                   currency = 'EUR'
                                                   department = '100'
                                                   created_by = 'CB998000015B'
                                                   create_date = cl_abap_context_info=>get_system_date( ) )

                                                    ) ).
  ENDMETHOD.

ENDCLASS.
