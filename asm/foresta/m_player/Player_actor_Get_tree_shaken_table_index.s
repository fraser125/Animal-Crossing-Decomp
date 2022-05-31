lbl_804DC5E0:
/* 804DC5E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DC5E4  7C 08 02 A6 */	mflr r0
/* 804DC5E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DC5EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804DC5F0  7C 7F 1B 78 */	mr r31, r3
/* 804DC5F4  38 61 00 0C */	addi r3, r1, 0xc
/* 804DC5F8  80 A4 00 00 */	lwz r5, 0(r4)
/* 804DC5FC  80 C4 00 04 */	lwz r6, 4(r4)
/* 804DC600  80 04 00 08 */	lwz r0, 8(r4)
/* 804DC604  38 81 00 08 */	addi r4, r1, 8
/* 804DC608  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804DC60C  38 A1 00 10 */	addi r5, r1, 0x10
/* 804DC610  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804DC614  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DC618  4B EC 8D 51 */	bl mFI_Wpos2UtNum
/* 804DC61C  2C 03 00 00 */	cmpwi r3, 0
/* 804DC620  41 82 00 6C */	beq lbl_804DC68C
/* 804DC624  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DC628  38 00 00 03 */	li r0, 3
/* 804DC62C  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804DC630  38 FF 11 B4 */	addi r7, r31, 0x11b4
/* 804DC634  39 1F 11 C0 */	addi r8, r31, 0x11c0
/* 804DC638  39 3F 11 CC */	addi r9, r31, 0x11cc
/* 804DC63C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804DC640  38 60 00 00 */	li r3, 0
/* 804DC644  80 C1 00 08 */	lwz r6, 8(r1)
/* 804DC648  C0 04 00 00 */	lfs f0, 0(r4)
/* 804DC64C  7C 09 03 A6 */	mtctr r0
lbl_804DC650:
/* 804DC650  C0 27 00 00 */	lfs f1, 0(r7)
/* 804DC654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC658  40 81 00 20 */	ble lbl_804DC678
/* 804DC65C  80 08 00 00 */	lwz r0, 0(r8)
/* 804DC660  7C 00 28 00 */	cmpw r0, r5
/* 804DC664  40 82 00 14 */	bne lbl_804DC678
/* 804DC668  80 09 00 00 */	lwz r0, 0(r9)
/* 804DC66C  7C 00 30 00 */	cmpw r0, r6
/* 804DC670  40 82 00 08 */	bne lbl_804DC678
/* 804DC674  48 00 00 1C */	b lbl_804DC690
lbl_804DC678:
/* 804DC678  38 E7 00 04 */	addi r7, r7, 4
/* 804DC67C  39 08 00 04 */	addi r8, r8, 4
/* 804DC680  39 29 00 04 */	addi r9, r9, 4
/* 804DC684  38 63 00 01 */	addi r3, r3, 1
/* 804DC688  42 00 FF C8 */	bdnz lbl_804DC650
lbl_804DC68C:
/* 804DC68C  38 60 FF FF */	li r3, -1
lbl_804DC690:
/* 804DC690  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DC694  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804DC698  7C 08 03 A6 */	mtlr r0
/* 804DC69C  38 21 00 30 */	addi r1, r1, 0x30
/* 804DC6A0  4E 80 00 20 */	blr 
