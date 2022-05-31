lbl_8042A3B4:
/* 8042A3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A3B8  7C 08 02 A6 */	mflr r0
/* 8042A3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A3C4  7C 9F 23 78 */	mr r31, r4
/* 8042A3C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8042A3CC  7C 7E 1B 78 */	mr r30, r3
/* 8042A3D0  3C 60 80 68 */	lis r3, data_80683F78@ha /* 0x80683F78@ha */
/* 8042A3D4  A8 1E 01 78 */	lha r0, 0x178(r30)
/* 8042A3D8  38 63 3F 78 */	addi r3, r3, data_80683F78@l /* 0x80683F78@l */
/* 8042A3DC  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8042A3E0  7C 63 02 14 */	add r3, r3, r0
/* 8042A3E4  A8 03 00 14 */	lha r0, 0x14(r3)
/* 8042A3E8  2C 00 00 02 */	cmpwi r0, 2
/* 8042A3EC  41 82 00 2C */	beq lbl_8042A418
/* 8042A3F0  40 80 00 3C */	bge lbl_8042A42C
/* 8042A3F4  2C 00 00 01 */	cmpwi r0, 1
/* 8042A3F8  40 80 00 08 */	bge lbl_8042A400
/* 8042A3FC  48 00 00 30 */	b lbl_8042A42C
lbl_8042A400:
/* 8042A400  80 64 00 00 */	lwz r3, 0(r4)
/* 8042A404  4B FB AD 05 */	bl _texture_z_light_fog_prim
/* 8042A408  7F E4 FB 78 */	mr r4, r31
/* 8042A40C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8042A410  4B F4 BB 6D */	bl Setpos_HiliteReflect_init
/* 8042A414  48 00 00 18 */	b lbl_8042A42C
lbl_8042A418:
/* 8042A418  80 64 00 00 */	lwz r3, 0(r4)
/* 8042A41C  4B FB AD 3D */	bl _texture_z_light_fog_prim_xlu
/* 8042A420  7F E4 FB 78 */	mr r4, r31
/* 8042A424  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8042A428  4B F4 BB F1 */	bl Setpos_HiliteReflect_xlu_init
lbl_8042A42C:
/* 8042A42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A434  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042A438  7C 08 03 A6 */	mtlr r0
/* 8042A43C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A440  4E 80 00 20 */	blr 
