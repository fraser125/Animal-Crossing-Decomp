lbl_80604F3C:
/* 80604F3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80604F40  7C 08 02 A6 */	mflr r0
/* 80604F44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80604F48  39 61 00 30 */	addi r11, r1, 0x30
/* 80604F4C  4B A9 5F 81 */	bl func_8009AECC
/* 80604F50  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80604F54  7C 9C 23 78 */	mr r28, r4
/* 80604F58  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80604F5C  7C 7B 1B 78 */	mr r27, r3
/* 80604F60  3F E5 00 02 */	addis r31, r5, 2
/* 80604F64  A3 A3 00 0C */	lhz r29, 0xc(r3)
/* 80604F68  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80604F6C  38 80 00 1A */	li r4, 0x1a
/* 80604F70  8B C3 00 0E */	lbz r30, 0xe(r3)
/* 80604F74  81 85 00 10 */	lwz r12, 0x10(r5)
/* 80604F78  38 A0 00 34 */	li r5, 0x34
/* 80604F7C  7D 89 03 A6 */	mtctr r12
/* 80604F80  4E 80 04 21 */	bctrl 
/* 80604F84  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80604F88  28 0B 00 00 */	cmplwi r11, 0
/* 80604F8C  41 82 00 54 */	beq lbl_80604FE0
/* 80604F90  A8 1B 00 00 */	lha r0, 0(r27)
/* 80604F94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80604F98  41 82 00 48 */	beq lbl_80604FE0
/* 80604F9C  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 80604FA0  7F C5 F3 78 */	mr r5, r30
/* 80604FA4  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 80604FA8  7F 87 E3 78 */	mr r7, r28
/* 80604FAC  7F A8 EB 78 */	mr r8, r29
/* 80604FB0  38 81 00 08 */	addi r4, r1, 8
/* 80604FB4  90 61 00 08 */	stw r3, 8(r1)
/* 80604FB8  38 60 00 09 */	li r3, 9
/* 80604FBC  38 C0 00 00 */	li r6, 0
/* 80604FC0  39 20 00 00 */	li r9, 0
/* 80604FC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80604FC8  39 40 00 00 */	li r10, 0
/* 80604FCC  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 80604FD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80604FD4  81 8B 00 00 */	lwz r12, 0(r11)
/* 80604FD8  7D 89 03 A6 */	mtctr r12
/* 80604FDC  4E 80 04 21 */	bctrl 
lbl_80604FE0:
/* 80604FE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80604FE4  4B A9 5F 35 */	bl func_8009AF18
/* 80604FE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80604FEC  7C 08 03 A6 */	mtlr r0
/* 80604FF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80604FF4  4E 80 00 20 */	blr 
