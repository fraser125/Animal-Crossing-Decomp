lbl_80407DCC:
/* 80407DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80407DD0  7C 08 02 A6 */	mflr r0
/* 80407DD4  3C 60 80 66 */	lis r3, stop_command@ha /* 0x8065F03C@ha */
/* 80407DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80407DDC  38 63 F0 3C */	addi r3, r3, stop_command@l /* 0x8065F03C@l */
/* 80407DE0  4B C8 2F 75 */	bl PADControlAllMotors
/* 80407DE4  38 60 00 00 */	li r3, 0
/* 80407DE8  3C 80 80 66 */	lis r4, data_8065F038@ha /* 0x8065F038@ha */
/* 80407DEC  38 00 00 04 */	li r0, 4
/* 80407DF0  7C 6A 1B 78 */	mr r10, r3
/* 80407DF4  7C 67 1B 78 */	mr r7, r3
/* 80407DF8  7C 65 1B 78 */	mr r5, r3
/* 80407DFC  39 24 F0 38 */	addi r9, r4, data_8065F038@l /* 0x8065F038@l */
/* 80407E00  7C 09 03 A6 */	mtctr r0
lbl_80407E04:
/* 80407E04  81 09 00 00 */	lwz r8, 0(r9)
/* 80407E08  38 C3 04 4A */	addi r6, r3, 0x44a
/* 80407E0C  38 83 04 4B */	addi r4, r3, 0x44b
/* 80407E10  38 03 04 4C */	addi r0, r3, 0x44c
/* 80407E14  7D 48 31 AE */	stbx r10, r8, r6
/* 80407E18  38 63 00 04 */	addi r3, r3, 4
/* 80407E1C  80 C9 00 00 */	lwz r6, 0(r9)
/* 80407E20  7C E6 21 AE */	stbx r7, r6, r4
/* 80407E24  80 89 00 00 */	lwz r4, 0(r9)
/* 80407E28  7C A4 01 AE */	stbx r5, r4, r0
/* 80407E2C  42 00 FF D8 */	bdnz lbl_80407E04
/* 80407E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80407E34  7C 08 03 A6 */	mtlr r0
/* 80407E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80407E3C  4E 80 00 20 */	blr 
