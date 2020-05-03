#region Elevar
y += elevo_tasa;
elevo_variable += elevo_tasa;
if (elevo_variable >= elevo_tope or elevo_variable <= -elevo_tope)
{
	elevo_tasa *= -1;
}
#endregion