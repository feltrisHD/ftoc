program ftoc
    implicit none
    integer :: celcius, fahrenheit
    character(len=2) :: was
    character(len=1) :: end
    
    WRITE(*,*) "Do you want to calculate from fahrenheit to celsius (fc) or from celcius to fahrenheit (cf)?"
    READ(*,*) was
    
    SELECT CASE (was)
        CASE ("fc")
            WRITE(*,*) "Enter the temperature in Fahrenheit:"
            READ(*,*) fahrenheit
            celcius = INT(0.5 * (fahrenheit - 32.0))
            WRITE(*,*)"~", celcius, "degrees Celsius"
        CASE ("cf")
            WRITE(*,*) "Enter the temperature in Celsius:"
            READ(*,*) celcius
            fahrenheit = INT(1.8 * celcius + 32.0)
            WRITE(*,*) fahrenheit, "Fahrenheit"
        CASE DEFAULT
            WRITE(*,*) "Invalid choice!"
    END SELECT

end program ftoc
