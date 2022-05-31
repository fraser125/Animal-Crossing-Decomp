lbl_805F0F14:
/* 805F0F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F0F18  7C 08 02 A6 */	mflr r0
/* 805F0F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F0F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F0F24  7C 7F 1B 78 */	mr r31, r3
/* 805F0F28  93 C1 00 08 */	stw r30, 8(r1)
/* 805F0F2C  7C 9E 23 78 */	mr r30, r4
/* 805F0F30  81 06 00 2C */	lwz r8, 0x2c(r6)
/* 805F0F34  80 68 09 7C */	lwz r3, 0x97c(r8)
/* 805F0F38  80 03 00 40 */	lwz r0, 0x40(r3)
/* 805F0F3C  28 00 00 09 */	cmplwi r0, 9
/* 805F0F40  41 81 00 D0 */	bgt lbl_805F1010
/* 805F0F44  3C 60 80 6D */	lis r3, lit_916@ha /* 0x806D0958@ha */
/* 805F0F48  54 00 10 3A */	slwi r0, r0, 2
/* 805F0F4C  38 63 09 58 */	addi r3, r3, lit_916@l /* 0x806D0958@l */
/* 805F0F50  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F0F54  7C 09 03 A6 */	mtctr r0
/* 805F0F58  4E 80 04 20 */	bctr 
lbl_805F0F5C:
/* 805F0F5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F0F60  54 E4 08 3C */	slwi r4, r7, 1
/* 805F0F64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F0F68  3C C3 00 02 */	addis r6, r3, 2
/* 805F0F6C  80 06 61 3C */	lwz r0, 0x613c(r6)
/* 805F0F70  7C 60 22 14 */	add r3, r0, r4
/* 805F0F74  A0 03 00 68 */	lhz r0, 0x68(r3)
/* 805F0F78  B0 1F 00 00 */	sth r0, 0(r31)
/* 805F0F7C  80 66 61 3C */	lwz r3, 0x613c(r6)
/* 805F0F80  80 03 00 88 */	lwz r0, 0x88(r3)
/* 805F0F84  7C 00 24 30 */	srw r0, r0, r4
/* 805F0F88  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805F0F8C  90 05 00 00 */	stw r0, 0(r5)
/* 805F0F90  48 00 00 88 */	b lbl_805F1018
lbl_805F0F94:
/* 805F0F94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F0F98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F0F9C  3C 63 00 02 */	addis r3, r3, 2
/* 805F0FA0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F0FA4  A0 03 04 A4 */	lhz r0, 0x4a4(r3)
/* 805F0FA8  B0 1F 00 00 */	sth r0, 0(r31)
/* 805F0FAC  48 00 00 6C */	b lbl_805F1018
lbl_805F0FB0:
/* 805F0FB0  80 68 04 80 */	lwz r3, 0x480(r8)
/* 805F0FB4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F0FB8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F0FBC  54 E0 18 38 */	slwi r0, r7, 3
/* 805F0FC0  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 805F0FC4  3C 84 00 01 */	addis r4, r4, 1
/* 805F0FC8  7C 64 1A 14 */	add r3, r4, r3
/* 805F0FCC  7C 63 02 14 */	add r3, r3, r0
/* 805F0FD0  A0 03 C2 BC */	lhz r0, -0x3d44(r3)
/* 805F0FD4  B0 1F 00 00 */	sth r0, 0(r31)
/* 805F0FD8  48 00 00 40 */	b lbl_805F1018
lbl_805F0FDC:
/* 805F0FDC  80 88 09 88 */	lwz r4, 0x988(r8)
/* 805F0FE0  7C E3 3B 78 */	mr r3, r7
/* 805F0FE4  81 84 05 DC */	lwz r12, 0x5dc(r4)
/* 805F0FE8  88 84 03 F2 */	lbz r4, 0x3f2(r4)
/* 805F0FEC  7D 89 03 A6 */	mtctr r12
/* 805F0FF0  4E 80 04 21 */	bctrl 
/* 805F0FF4  B0 7F 00 00 */	sth r3, 0(r31)
/* 805F0FF8  48 00 00 20 */	b lbl_805F1018
lbl_805F0FFC:
/* 805F0FFC  7C C3 33 78 */	mr r3, r6
/* 805F1000  38 80 00 00 */	li r4, 0
/* 805F1004  4B FF EF BD */	bl mTG_get_mail_pointer
/* 805F1008  90 7E 00 00 */	stw r3, 0(r30)
/* 805F100C  48 00 00 0C */	b lbl_805F1018
lbl_805F1010:
/* 805F1010  38 00 00 00 */	li r0, 0
/* 805F1014  B0 1F 00 00 */	sth r0, 0(r31)
lbl_805F1018:
/* 805F1018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F101C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F1020  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F1024  7C 08 03 A6 */	mtlr r0
/* 805F1028  38 21 00 10 */	addi r1, r1, 0x10
/* 805F102C  4E 80 00 20 */	blr 
