/// @description Turn white while invuln
draw_self()

if (invuln < 120 and invuln >= 0)
{
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
