lbl_80591E3C:
/* 80591E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591E40  7C 08 02 A6 */	mflr r0
/* 80591E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80591E4C  7C 7F 1B 78 */	mr r31, r3
/* 80591E50  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80591E54  28 00 00 FF */	cmplwi r0, 0xff
/* 80591E58  40 82 00 6C */	bne lbl_80591EC4
/* 80591E5C  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80591E60  2C 00 00 16 */	cmpwi r0, 0x16
/* 80591E64  41 82 00 14 */	beq lbl_80591E78
/* 80591E68  40 80 00 5C */	bge lbl_80591EC4
/* 80591E6C  2C 00 00 08 */	cmpwi r0, 8
/* 80591E70  41 82 00 34 */	beq lbl_80591EA4
/* 80591E74  48 00 00 50 */	b lbl_80591EC4
lbl_80591E78:
/* 80591E78  80 9F 09 98 */	lwz r4, 0x998(r31)
/* 80591E7C  2C 04 FF FF */	cmpwi r4, -1
/* 80591E80  41 82 00 10 */	beq lbl_80591E90
/* 80591E84  4B FF FE ED */	bl aHT1_setupAction
/* 80591E88  38 00 FF FF */	li r0, -1
/* 80591E8C  90 1F 09 98 */	stw r0, 0x998(r31)
lbl_80591E90:
/* 80591E90  38 60 00 03 */	li r3, 3
/* 80591E94  38 00 00 01 */	li r0, 1
/* 80591E98  90 7F 08 40 */	stw r3, 0x840(r31)
/* 80591E9C  98 1F 09 59 */	stb r0, 0x959(r31)
/* 80591EA0  48 00 00 24 */	b lbl_80591EC4
lbl_80591EA4:
/* 80591EA4  4B FF FD ED */	bl aHT1_GetDefaultAngle
/* 80591EA8  B0 7F 09 24 */	sth r3, 0x924(r31)
/* 80591EAC  7F E3 FB 78 */	mr r3, r31
/* 80591EB0  4B FF FE 21 */	bl func_80591CD0
/* 80591EB4  38 60 00 03 */	li r3, 3
/* 80591EB8  38 00 00 01 */	li r0, 1
/* 80591EBC  90 7F 08 40 */	stw r3, 0x840(r31)
/* 80591EC0  98 1F 09 59 */	stb r0, 0x959(r31)
lbl_80591EC4:
/* 80591EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80591ECC  7C 08 03 A6 */	mtlr r0
/* 80591ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80591ED4  4E 80 00 20 */	blr 
