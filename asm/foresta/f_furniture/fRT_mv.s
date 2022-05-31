lbl_8063DB5C:
/* 8063DB5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063DB60  7C 08 02 A6 */	mflr r0
/* 8063DB64  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063DB68  39 61 00 30 */	addi r11, r1, 0x30
/* 8063DB6C  4B A5 D3 69 */	bl func_8009AED4
/* 8063DB70  7C 7F 1B 78 */	mr r31, r3
/* 8063DB74  7C BD 2B 78 */	mr r29, r5
/* 8063DB78  4B E3 61 15 */	bl aMR_RadioCommonMove
/* 8063DB7C  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063DB80  28 00 00 01 */	cmplwi r0, 1
/* 8063DB84  40 82 00 AC */	bne lbl_8063DC30
/* 8063DB88  A8 1F 08 2A */	lha r0, 0x82a(r31)
/* 8063DB8C  2C 00 00 24 */	cmpwi r0, 0x24
/* 8063DB90  41 80 00 94 */	blt lbl_8063DC24
/* 8063DB94  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8063DB98  3C 60 80 65 */	lis r3, lit_6599@ha /* 0x8064D3CC@ha */
/* 8063DB9C  38 83 D3 CC */	addi r4, r3, lit_6599@l /* 0x8064D3CC@l */
/* 8063DBA0  81 7F 00 08 */	lwz r11, 8(r31)
/* 8063DBA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8063DBA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063DBAC  83 DF 00 10 */	lwz r30, 0x10(r31)
/* 8063DBB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063DBB4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8063DBB8  3C 63 00 02 */	addis r3, r3, 2
/* 8063DBBC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8063DBC0  7F A7 EB 78 */	mr r7, r29
/* 8063DBC4  91 61 00 08 */	stw r11, 8(r1)
/* 8063DBC8  38 81 00 08 */	addi r4, r1, 8
/* 8063DBCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8063DBD0  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8063DBD4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8063DBD8  38 60 00 20 */	li r3, 0x20
/* 8063DBDC  38 A0 00 01 */	li r5, 1
/* 8063DBE0  39 00 1F CC */	li r8, 0x1fcc
/* 8063DBE4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8063DBE8  39 20 00 01 */	li r9, 1
/* 8063DBEC  39 40 00 00 */	li r10, 0
/* 8063DBF0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8063DBF4  91 61 00 14 */	stw r11, 0x14(r1)
/* 8063DBF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063DBFC  A9 7F 01 24 */	lha r11, 0x124(r31)
/* 8063DC00  81 86 00 00 */	lwz r12, 0(r6)
/* 8063DC04  3C CB 00 01 */	addis r6, r11, 1
/* 8063DC08  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 8063DC0C  38 06 F0 00 */	addi r0, r6, -4096
/* 8063DC10  7C 06 07 34 */	extsh r6, r0
/* 8063DC14  7D 89 03 A6 */	mtctr r12
/* 8063DC18  4E 80 04 21 */	bctrl 
/* 8063DC1C  38 00 00 00 */	li r0, 0
/* 8063DC20  B0 1F 08 2A */	sth r0, 0x82a(r31)
lbl_8063DC24:
/* 8063DC24  A8 7F 08 2A */	lha r3, 0x82a(r31)
/* 8063DC28  38 03 00 01 */	addi r0, r3, 1
/* 8063DC2C  B0 1F 08 2A */	sth r0, 0x82a(r31)
lbl_8063DC30:
/* 8063DC30  39 61 00 30 */	addi r11, r1, 0x30
/* 8063DC34  4B A5 D2 ED */	bl func_8009AF20
/* 8063DC38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063DC3C  7C 08 03 A6 */	mtlr r0
/* 8063DC40  38 21 00 30 */	addi r1, r1, 0x30
/* 8063DC44  4E 80 00 20 */	blr 
