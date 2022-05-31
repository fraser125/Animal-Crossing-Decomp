lbl_805D2D2C:
/* 805D2D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D2D30  7C 08 02 A6 */	mflr r0
/* 805D2D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D2D38  38 00 00 01 */	li r0, 1
/* 805D2D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D2D40  7C 7F 1B 78 */	mr r31, r3
/* 805D2D44  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D2D48  98 1F 06 99 */	stb r0, 0x699(r31)
/* 805D2D4C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D2D50  4B DC 31 C1 */	bl chkTrigger
/* 805D2D54  2C 03 00 00 */	cmpwi r3, 0
/* 805D2D58  41 82 00 20 */	beq lbl_805D2D78
/* 805D2D5C  38 60 04 55 */	li r3, 0x455
/* 805D2D60  48 05 AF A5 */	bl sAdo_SysTrgStart
/* 805D2D64  7F E3 FB 78 */	mr r3, r31
/* 805D2D68  4B FF FB CD */	bl mDE_set_undo_texture
/* 805D2D6C  88 9F 06 A4 */	lbz r4, 0x6a4(r31)
/* 805D2D70  7F E3 FB 78 */	mr r3, r31
/* 805D2D74  4B FF F8 D5 */	bl mDE_paint
lbl_805D2D78:
/* 805D2D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D2D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D2D80  7C 08 03 A6 */	mtlr r0
/* 805D2D84  38 21 00 10 */	addi r1, r1, 0x10
/* 805D2D88  4E 80 00 20 */	blr 
