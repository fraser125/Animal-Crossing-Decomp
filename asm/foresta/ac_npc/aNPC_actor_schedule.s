lbl_80538BF8:
/* 80538BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538BFC  7C 08 02 A6 */	mflr r0
/* 80538C00  2C 04 00 03 */	cmpwi r4, 3
/* 80538C04  38 A3 07 E0 */	addi r5, r3, 0x7e0
/* 80538C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538C0C  41 82 00 44 */	beq lbl_80538C50
/* 80538C10  40 80 00 14 */	bge lbl_80538C24
/* 80538C14  2C 04 00 01 */	cmpwi r4, 1
/* 80538C18  41 82 00 1C */	beq lbl_80538C34
/* 80538C1C  40 80 00 20 */	bge lbl_80538C3C
/* 80538C20  48 00 00 6C */	b lbl_80538C8C
lbl_80538C24:
/* 80538C24  2C 04 00 05 */	cmpwi r4, 5
/* 80538C28  41 82 00 50 */	beq lbl_80538C78
/* 80538C2C  40 80 00 60 */	bge lbl_80538C8C
/* 80538C30  48 00 00 34 */	b lbl_80538C64
lbl_80538C34:
/* 80538C34  4B FF F5 81 */	bl aNPC_first_set_schedule
/* 80538C38  48 00 00 64 */	b lbl_80538C9C
lbl_80538C3C:
/* 80538C3C  38 00 00 03 */	li r0, 3
/* 80538C40  98 05 00 08 */	stb r0, 8(r5)
/* 80538C44  90 A3 01 84 */	stw r5, 0x184(r3)
/* 80538C48  98 03 07 DC */	stb r0, 0x7dc(r3)
/* 80538C4C  48 00 00 50 */	b lbl_80538C9C
lbl_80538C50:
/* 80538C50  38 00 00 04 */	li r0, 4
/* 80538C54  98 05 00 08 */	stb r0, 8(r5)
/* 80538C58  90 A3 01 84 */	stw r5, 0x184(r3)
/* 80538C5C  98 03 07 DC */	stb r0, 0x7dc(r3)
/* 80538C60  48 00 00 3C */	b lbl_80538C9C
lbl_80538C64:
/* 80538C64  38 00 00 05 */	li r0, 5
/* 80538C68  98 05 00 08 */	stb r0, 8(r5)
/* 80538C6C  90 A3 01 84 */	stw r5, 0x184(r3)
/* 80538C70  98 03 07 DC */	stb r0, 0x7dc(r3)
/* 80538C74  48 00 00 28 */	b lbl_80538C9C
lbl_80538C78:
/* 80538C78  38 00 00 06 */	li r0, 6
/* 80538C7C  98 05 00 08 */	stb r0, 8(r5)
/* 80538C80  90 A3 01 84 */	stw r5, 0x184(r3)
/* 80538C84  98 03 07 DC */	stb r0, 0x7dc(r3)
/* 80538C88  48 00 00 14 */	b lbl_80538C9C
lbl_80538C8C:
/* 80538C8C  38 00 00 03 */	li r0, 3
/* 80538C90  98 05 00 08 */	stb r0, 8(r5)
/* 80538C94  90 A3 01 84 */	stw r5, 0x184(r3)
/* 80538C98  98 03 07 DC */	stb r0, 0x7dc(r3)
lbl_80538C9C:
/* 80538C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80538CA0  7C 08 03 A6 */	mtlr r0
/* 80538CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80538CA8  4E 80 00 20 */	blr 