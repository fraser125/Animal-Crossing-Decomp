lbl_806330B0:
/* 806330B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806330B4  7C 08 02 A6 */	mflr r0
/* 806330B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806330BC  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 806330C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 806330C4  41 82 00 28 */	beq lbl_806330EC
/* 806330C8  2C 00 00 0E */	cmpwi r0, 0xe
/* 806330CC  41 82 00 20 */	beq lbl_806330EC
/* 806330D0  2C 00 00 0F */	cmpwi r0, 0xf
/* 806330D4  41 82 00 18 */	beq lbl_806330EC
/* 806330D8  2C 00 00 0C */	cmpwi r0, 0xc
/* 806330DC  41 82 00 10 */	beq lbl_806330EC
/* 806330E0  38 A3 00 08 */	addi r5, r3, 8
/* 806330E4  38 80 00 41 */	li r4, 0x41
/* 806330E8  4B FF B6 15 */	bl sAdo_RoomIncectPos
lbl_806330EC:
/* 806330EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806330F0  7C 08 03 A6 */	mtlr r0
/* 806330F4  38 21 00 10 */	addi r1, r1, 0x10
/* 806330F8  4E 80 00 20 */	blr 
