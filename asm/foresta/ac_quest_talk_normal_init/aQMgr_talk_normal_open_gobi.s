lbl_804959CC:
/* 804959CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804959D0  7C 08 02 A6 */	mflr r0
/* 804959D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804959D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804959DC  7C 7F 1B 78 */	mr r31, r3
/* 804959E0  80 83 01 78 */	lwz r4, 0x178(r3)
/* 804959E4  80 63 01 74 */	lwz r3, 0x174(r3)
/* 804959E8  80 84 00 00 */	lwz r4, 0(r4)
/* 804959EC  80 84 01 7C */	lwz r4, 0x17c(r4)
/* 804959F0  28 04 00 00 */	cmplwi r4, 0
/* 804959F4  41 82 00 28 */	beq lbl_80495A1C
/* 804959F8  38 E4 08 9D */	addi r7, r4, 0x89d
/* 804959FC  38 80 00 04 */	li r4, 4
/* 80495A00  38 A0 00 02 */	li r5, 2
/* 80495A04  38 C0 00 00 */	li r6, 0
/* 80495A08  4B F5 9C FD */	bl mSM_open_submenu_new
/* 80495A0C  38 60 00 04 */	li r3, 4
/* 80495A10  38 00 00 03 */	li r0, 3
/* 80495A14  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80495A18  98 1F 01 86 */	stb r0, 0x186(r31)
lbl_80495A1C:
/* 80495A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495A24  7C 08 03 A6 */	mtlr r0
/* 80495A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80495A2C  4E 80 00 20 */	blr 
