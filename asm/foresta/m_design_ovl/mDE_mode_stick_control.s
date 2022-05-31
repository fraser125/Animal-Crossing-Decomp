lbl_805D3FB4:
/* 805D3FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D3FB8  7C 08 02 A6 */	mflr r0
/* 805D3FBC  38 80 00 03 */	li r4, 3
/* 805D3FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D3FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D3FC8  7C 7F 1B 78 */	mr r31, r3
/* 805D3FCC  4B FF D4 35 */	bl mDE_cursor_move_check
/* 805D3FD0  2C 03 00 00 */	cmpwi r3, 0
/* 805D3FD4  41 82 00 3C */	beq lbl_805D4010
/* 805D3FD8  7F E3 FB 78 */	mr r3, r31
/* 805D3FDC  38 80 00 00 */	li r4, 0
/* 805D3FE0  4B FF D4 21 */	bl mDE_cursor_move_check
/* 805D3FE4  2C 03 00 00 */	cmpwi r3, 0
/* 805D3FE8  41 82 00 28 */	beq lbl_805D4010
/* 805D3FEC  7F E3 FB 78 */	mr r3, r31
/* 805D3FF0  4B FF FB BD */	bl mde_main_move_sound
/* 805D3FF4  7F E3 FB 78 */	mr r3, r31
/* 805D3FF8  38 80 00 03 */	li r4, 3
/* 805D3FFC  4B FF D5 21 */	bl mDE_cursor_move
/* 805D4000  7F E3 FB 78 */	mr r3, r31
/* 805D4004  38 80 00 00 */	li r4, 0
/* 805D4008  4B FF D5 15 */	bl mDE_cursor_move
/* 805D400C  48 00 01 94 */	b lbl_805D41A0
lbl_805D4010:
/* 805D4010  7F E3 FB 78 */	mr r3, r31
/* 805D4014  38 80 00 03 */	li r4, 3
/* 805D4018  4B FF D3 E9 */	bl mDE_cursor_move_check
/* 805D401C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4020  41 82 00 3C */	beq lbl_805D405C
/* 805D4024  7F E3 FB 78 */	mr r3, r31
/* 805D4028  38 80 00 01 */	li r4, 1
/* 805D402C  4B FF D3 D5 */	bl mDE_cursor_move_check
/* 805D4030  2C 03 00 00 */	cmpwi r3, 0
/* 805D4034  41 82 00 28 */	beq lbl_805D405C
/* 805D4038  7F E3 FB 78 */	mr r3, r31
/* 805D403C  4B FF FB 71 */	bl mde_main_move_sound
/* 805D4040  7F E3 FB 78 */	mr r3, r31
/* 805D4044  38 80 00 03 */	li r4, 3
/* 805D4048  4B FF D4 D5 */	bl mDE_cursor_move
/* 805D404C  7F E3 FB 78 */	mr r3, r31
/* 805D4050  38 80 00 01 */	li r4, 1
/* 805D4054  4B FF D4 C9 */	bl mDE_cursor_move
/* 805D4058  48 00 01 48 */	b lbl_805D41A0
lbl_805D405C:
/* 805D405C  7F E3 FB 78 */	mr r3, r31
/* 805D4060  38 80 00 02 */	li r4, 2
/* 805D4064  4B FF D3 9D */	bl mDE_cursor_move_check
/* 805D4068  2C 03 00 00 */	cmpwi r3, 0
/* 805D406C  41 82 00 3C */	beq lbl_805D40A8
/* 805D4070  7F E3 FB 78 */	mr r3, r31
/* 805D4074  38 80 00 00 */	li r4, 0
/* 805D4078  4B FF D3 89 */	bl mDE_cursor_move_check
/* 805D407C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4080  41 82 00 28 */	beq lbl_805D40A8
/* 805D4084  7F E3 FB 78 */	mr r3, r31
/* 805D4088  4B FF FB 25 */	bl mde_main_move_sound
/* 805D408C  7F E3 FB 78 */	mr r3, r31
/* 805D4090  38 80 00 02 */	li r4, 2
/* 805D4094  4B FF D4 89 */	bl mDE_cursor_move
/* 805D4098  7F E3 FB 78 */	mr r3, r31
/* 805D409C  38 80 00 00 */	li r4, 0
/* 805D40A0  4B FF D4 7D */	bl mDE_cursor_move
/* 805D40A4  48 00 00 FC */	b lbl_805D41A0
lbl_805D40A8:
/* 805D40A8  7F E3 FB 78 */	mr r3, r31
/* 805D40AC  38 80 00 02 */	li r4, 2
/* 805D40B0  4B FF D3 51 */	bl mDE_cursor_move_check
/* 805D40B4  2C 03 00 00 */	cmpwi r3, 0
/* 805D40B8  41 82 00 3C */	beq lbl_805D40F4
/* 805D40BC  7F E3 FB 78 */	mr r3, r31
/* 805D40C0  38 80 00 01 */	li r4, 1
/* 805D40C4  4B FF D3 3D */	bl mDE_cursor_move_check
/* 805D40C8  2C 03 00 00 */	cmpwi r3, 0
/* 805D40CC  41 82 00 28 */	beq lbl_805D40F4
/* 805D40D0  7F E3 FB 78 */	mr r3, r31
/* 805D40D4  4B FF FA D9 */	bl mde_main_move_sound
/* 805D40D8  7F E3 FB 78 */	mr r3, r31
/* 805D40DC  38 80 00 02 */	li r4, 2
/* 805D40E0  4B FF D4 3D */	bl mDE_cursor_move
/* 805D40E4  7F E3 FB 78 */	mr r3, r31
/* 805D40E8  38 80 00 01 */	li r4, 1
/* 805D40EC  4B FF D4 31 */	bl mDE_cursor_move
/* 805D40F0  48 00 00 B0 */	b lbl_805D41A0
lbl_805D40F4:
/* 805D40F4  7F E3 FB 78 */	mr r3, r31
/* 805D40F8  38 80 00 03 */	li r4, 3
/* 805D40FC  4B FF D3 05 */	bl mDE_cursor_move_check
/* 805D4100  2C 03 00 00 */	cmpwi r3, 0
/* 805D4104  41 82 00 1C */	beq lbl_805D4120
/* 805D4108  7F E3 FB 78 */	mr r3, r31
/* 805D410C  4B FF FA A1 */	bl mde_main_move_sound
/* 805D4110  7F E3 FB 78 */	mr r3, r31
/* 805D4114  38 80 00 03 */	li r4, 3
/* 805D4118  4B FF D4 05 */	bl mDE_cursor_move
/* 805D411C  48 00 00 84 */	b lbl_805D41A0
lbl_805D4120:
/* 805D4120  7F E3 FB 78 */	mr r3, r31
/* 805D4124  38 80 00 02 */	li r4, 2
/* 805D4128  4B FF D2 D9 */	bl mDE_cursor_move_check
/* 805D412C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4130  41 82 00 1C */	beq lbl_805D414C
/* 805D4134  7F E3 FB 78 */	mr r3, r31
/* 805D4138  4B FF FA 75 */	bl mde_main_move_sound
/* 805D413C  7F E3 FB 78 */	mr r3, r31
/* 805D4140  38 80 00 02 */	li r4, 2
/* 805D4144  4B FF D3 D9 */	bl mDE_cursor_move
/* 805D4148  48 00 00 58 */	b lbl_805D41A0
lbl_805D414C:
/* 805D414C  7F E3 FB 78 */	mr r3, r31
/* 805D4150  38 80 00 00 */	li r4, 0
/* 805D4154  4B FF D2 AD */	bl mDE_cursor_move_check
/* 805D4158  2C 03 00 00 */	cmpwi r3, 0
/* 805D415C  41 82 00 1C */	beq lbl_805D4178
/* 805D4160  7F E3 FB 78 */	mr r3, r31
/* 805D4164  4B FF FA 49 */	bl mde_main_move_sound
/* 805D4168  7F E3 FB 78 */	mr r3, r31
/* 805D416C  38 80 00 00 */	li r4, 0
/* 805D4170  4B FF D3 AD */	bl mDE_cursor_move
/* 805D4174  48 00 00 2C */	b lbl_805D41A0
lbl_805D4178:
/* 805D4178  7F E3 FB 78 */	mr r3, r31
/* 805D417C  38 80 00 01 */	li r4, 1
/* 805D4180  4B FF D2 81 */	bl mDE_cursor_move_check
/* 805D4184  2C 03 00 00 */	cmpwi r3, 0
/* 805D4188  41 82 00 18 */	beq lbl_805D41A0
/* 805D418C  7F E3 FB 78 */	mr r3, r31
/* 805D4190  4B FF FA 1D */	bl mde_main_move_sound
/* 805D4194  7F E3 FB 78 */	mr r3, r31
/* 805D4198  38 80 00 01 */	li r4, 1
/* 805D419C  4B FF D3 81 */	bl mDE_cursor_move
lbl_805D41A0:
/* 805D41A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D41A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D41A8  7C 08 03 A6 */	mtlr r0
/* 805D41AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805D41B0  4E 80 00 20 */	blr 
