lbl_8056FCC0:
/* 8056FCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FCC4  7C 08 02 A6 */	mflr r0
/* 8056FCC8  3C 80 80 65 */	lis r4, lit_675@ha /* 0x806498D8@ha */
/* 8056FCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FCD0  38 00 00 00 */	li r0, 0
/* 8056FCD4  C0 04 98 D8 */	lfs f0, lit_675@l(r4)  /* 0x806498D8@l */
/* 8056FCD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056FCDC  7C 7F 1B 78 */	mr r31, r3
/* 8056FCE0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8056FCE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056FCE8  40 80 00 08 */	bge lbl_8056FCF0
/* 8056FCEC  38 00 00 01 */	li r0, 1
lbl_8056FCF0:
/* 8056FCF0  3C A0 80 6C */	lis r5, moveX_742@ha /* 0x806BEDFC@ha */
/* 8056FCF4  3C 80 80 6C */	lis r4, moveZ_743@ha /* 0x806BEE00@ha */
/* 8056FCF8  54 00 08 3C */	slwi r0, r0, 1
/* 8056FCFC  7F E3 FB 78 */	mr r3, r31
/* 8056FD00  38 C5 ED FC */	addi r6, r5, moveX_742@l /* 0x806BEDFC@l */
/* 8056FD04  38 A4 EE 00 */	addi r5, r4, moveZ_743@l /* 0x806BEE00@l */
/* 8056FD08  7D 06 02 AE */	lhax r8, r6, r0
/* 8056FD0C  38 80 00 04 */	li r4, 4
/* 8056FD10  7D 25 02 AE */	lhax r9, r5, r0
/* 8056FD14  38 A0 00 03 */	li r5, 3
/* 8056FD18  38 C0 00 03 */	li r6, 3
/* 8056FD1C  38 E0 00 00 */	li r7, 0
/* 8056FD20  4B FF F2 C9 */	bl func_8056EFE8
/* 8056FD24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056FD28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056FD2C  3C 63 00 02 */	addis r3, r3, 2
/* 8056FD30  80 63 60 AC */	lwz r3, 0x60ac(r3)
/* 8056FD34  28 03 00 00 */	cmplwi r3, 0
/* 8056FD38  41 82 00 24 */	beq lbl_8056FD5C
/* 8056FD3C  80 03 00 04 */	lwz r0, 4(r3)
/* 8056FD40  2C 00 00 01 */	cmpwi r0, 1
/* 8056FD44  40 82 00 18 */	bne lbl_8056FD5C
/* 8056FD48  80 63 00 00 */	lwz r3, 0(r3)
/* 8056FD4C  28 03 00 00 */	cmplwi r3, 0
/* 8056FD50  41 82 00 0C */	beq lbl_8056FD5C
/* 8056FD54  38 00 00 01 */	li r0, 1
/* 8056FD58  90 03 01 98 */	stw r0, 0x198(r3)
lbl_8056FD5C:
/* 8056FD5C  38 00 00 0F */	li r0, 0xf
/* 8056FD60  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8056FD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FD68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056FD6C  7C 08 03 A6 */	mtlr r0
/* 8056FD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FD74  4E 80 00 20 */	blr 
