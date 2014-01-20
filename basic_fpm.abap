La clase WDR_TASK no tiene nada pero contiene estos atributos siempre rellenos: 
REQUEST 
RESPONSE 
APPLICATION 
SERVER 
CLIENT_WINDOW 
MAIN_TASK 
APPLICATION_NAME 
ADAPTATION_MANAGER 

Así que con WDR_TASK=>APPLICATION->CONFIGURATION_ID desde cualquier sitio.

G:\Micrin\Lanzador\LWS\AdmLanzadorNet\AdmLanzadorNet.exe /install

g_pernr = cl_hress_employee_services =>get_instance( ) ->get_pernr( ).

   DATA lo_wd_component TYPE REF TO if_wd_component.  
   DATA lo_wd_application TYPE REF TO if_wd_application.  
   DATA lv_client_environment TYPE i.  
   
   lo_wd_component ?= wd_this->wd_get_api( ).  
   lo_wd_application = lo_wd_component->get_application( ).  
   lv_client_environment = lo_wd_application->get_client_environment( ).  
   CASE lv_client_environment.  

> 7.02

CASE wd_this->wd_get_api( )->get_application( )->get_client_environment( ).  

 WHEN if_wd_application=>co_client_environment-nwbc.  
 WHEN if_wd_application=>co_client_environment-portal.  
 WHEN if_wd_application=>co_client_environment-sapgui.  

  data lo_api_controller type ref to if_wd_view_controller. 
  data lo_action         type ref to if_wd_action .

  lo_api_controller = wd_this->wd_get_api ( ).
  lo_action = lo_api_controller-> get_current_action( ).

  if lo_action is bound .
    lo_action-> set( keep_messages = abap_true ). 
  endif.


Devuelve desde donde viene!!! :O
  CALL 'ABAP_CALLSTACK' ID 'DEPTH'     FIELD l_depth
                        ID 'CALLSTACK' FIELD l_callstack_c.


HR_GET_USER_FROM_EMPLOYEE

  DATA: 
    lo_fpm              TYPE REF TO if_fpm ,
    lo_event            TYPE REF TO cl_fpm_event ,
    lo_fpm_nd_root      TYPE REF TO if_fpm_node,
    lo_fpm_nd_action    TYPE REF TO if_fpm_node,
    lo_fpm_nd_parameter TYPE REF TO if_fpm_node,
    lo_rtti             TYPE REF TO cl_abap_structdescr ,
    lr_action           TYPE REF TO data.

  lo_fpm = cl_fpm_factory =>get_instance( ).

               data:
               lo_fpm              type ref to if_fpm. 
*----- no changes: inform user 
              lo_fpm = cl_fpm_factory =>get_instance( ). 
