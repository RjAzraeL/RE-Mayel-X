#region Solar
carga++;
if (carga == 100)
{
	
}
if (carga > 130)
{
	
	carga = 0;
}
#endregion
#region Orbita
// Orbital motion
Angle += Speed;
if(Angle >= 360) Angle -= 360;

// Update position
x = lengthdir_x(Orbit, Angle) + Center_X;
y = lengthdir_y(Orbit, Angle) + Center_Y;
#endregion