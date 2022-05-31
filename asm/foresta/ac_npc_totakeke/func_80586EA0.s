lbl_80586EA0:
/* 80586EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586EA4  7C 08 02 A6 */	mflr r0
/* 80586EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586EB0  7C 9F 23 78 */	mr r31, r4
/* 80586EB4  38 80 00 0A */	li r4, 0xa
/* 80586EB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80586EBC  7C 7E 1B 78 */	mr r30, r3
/* 80586EC0  38 60 00 47 */	li r3, 0x47
/* 80586EC4  4B E1 6F 09 */	bl mEv_get_save_area
/* 80586EC8  A8 9E 00 B6 */	lha r4, 0xb6(r30)
/* 80586ECC  7C 80 07 35 */	extsh. r0, r4
/* 80586ED0  7C 04 00 D0 */	neg r0, r4
/* 80586ED4  41 80 00 08 */	blt lbl_80586EDC
/* 80586ED8  7C 80 23 78 */	mr r0, r4
lbl_80586EDC:
/* 80586EDC  2C 00 0F A0 */	cmpwi r0, 0xfa0
/* 80586EE0  40 81 00 24 */	ble lbl_80586F04
/* 80586EE4  88 1E 09 A4 */	lbz r0, 0x9a4(r30)
/* 80586EE8  28 00 00 00 */	cmplwi r0, 0
/* 80586EEC  41 82 00 A4 */	beq lbl_80586F90
/* 80586EF0  7F C3 F3 78 */	mr r3, r30
/* 80586EF4  7F E4 FB 78 */	mr r4, r31
/* 80586EF8  38 A0 00 00 */	li r5, 0
/* 80586EFC  48 00 07 09 */	bl aNTT_setup_think_proc
/* 80586F00  48 00 00 90 */	b lbl_80586F90
lbl_80586F04:
/* 80586F04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80586F08  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80586F0C  3C 84 00 02 */	addis r4, r4, 2
/* 80586F10  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80586F14  80 04 23 48 */	lwz r0, 0x2348(r4)
/* 80586F18  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80586F1C  40 82 00 24 */	bne lbl_80586F40
/* 80586F20  88 1E 09 A4 */	lbz r0, 0x9a4(r30)
/* 80586F24  28 00 00 03 */	cmplwi r0, 3
/* 80586F28  41 82 00 68 */	beq lbl_80586F90
/* 80586F2C  7F C3 F3 78 */	mr r3, r30
/* 80586F30  7F E4 FB 78 */	mr r4, r31
/* 80586F34  38 A0 00 03 */	li r5, 3
/* 80586F38  48 00 06 CD */	bl aNTT_setup_think_proc
/* 80586F3C  48 00 00 54 */	b lbl_80586F90
lbl_80586F40:
/* 80586F40  A0 63 00 02 */	lhz r3, 2(r3)
/* 80586F44  38 80 00 01 */	li r4, 1
/* 80586F48  4B FF F5 6D */	bl aNTT_bitcheck_func
/* 80586F4C  2C 03 00 00 */	cmpwi r3, 0
/* 80586F50  40 82 00 24 */	bne lbl_80586F74
/* 80586F54  88 1E 09 A4 */	lbz r0, 0x9a4(r30)
/* 80586F58  28 00 00 01 */	cmplwi r0, 1
/* 80586F5C  41 82 00 34 */	beq lbl_80586F90
/* 80586F60  7F C3 F3 78 */	mr r3, r30
/* 80586F64  7F E4 FB 78 */	mr r4, r31
/* 80586F68  38 A0 00 01 */	li r5, 1
/* 80586F6C  48 00 06 99 */	bl aNTT_setup_think_proc
/* 80586F70  48 00 00 20 */	b lbl_80586F90
lbl_80586F74:
/* 80586F74  88 1E 09 A4 */	lbz r0, 0x9a4(r30)
/* 80586F78  28 00 00 02 */	cmplwi r0, 2
/* 80586F7C  41 82 00 14 */	beq lbl_80586F90
/* 80586F80  7F C3 F3 78 */	mr r3, r30
/* 80586F84  7F E4 FB 78 */	mr r4, r31
/* 80586F88  38 A0 00 02 */	li r5, 2
/* 80586F8C  48 00 06 79 */	bl aNTT_setup_think_proc
lbl_80586F90:
/* 80586F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586F94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80586F98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80586F9C  7C 08 03 A6 */	mtlr r0
/* 80586FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80586FA4  4E 80 00 20 */	blr 
