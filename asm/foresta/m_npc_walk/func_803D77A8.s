lbl_803D77A8:
/* 803D77A8  3C A0 80 66 */	lis r5, l_looks_goal_table@ha /* 0x8065B884@ha */
/* 803D77AC  54 60 10 3A */	slwi r0, r3, 2
/* 803D77B0  38 65 B8 84 */	addi r3, r5, l_looks_goal_table@l /* 0x8065B884@l */
/* 803D77B4  38 E0 00 00 */	li r7, 0
/* 803D77B8  7C 63 00 2E */	lwzx r3, r3, r0
/* 803D77BC  80 C3 00 00 */	lwz r6, 0(r3)
/* 803D77C0  80 A3 00 04 */	lwz r5, 4(r3)
/* 803D77C4  7C C3 33 78 */	mr r3, r6
/* 803D77C8  7C A9 03 A6 */	mtctr r5
/* 803D77CC  2C 05 00 00 */	cmpwi r5, 0
/* 803D77D0  40 81 00 1C */	ble lbl_803D77EC
lbl_803D77D4:
/* 803D77D4  80 03 00 08 */	lwz r0, 8(r3)
/* 803D77D8  7C 00 20 00 */	cmpw r0, r4
/* 803D77DC  41 81 00 10 */	bgt lbl_803D77EC
/* 803D77E0  38 63 00 0C */	addi r3, r3, 0xc
/* 803D77E4  38 E7 00 01 */	addi r7, r7, 1
/* 803D77E8  42 00 FF EC */	bdnz lbl_803D77D4
lbl_803D77EC:
/* 803D77EC  7C 07 28 00 */	cmpw r7, r5
/* 803D77F0  4C 82 00 20 */	bnelr 
/* 803D77F4  38 05 FF FF */	addi r0, r5, -1
/* 803D77F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803D77FC  7C 66 02 14 */	add r3, r6, r0
/* 803D7800  4E 80 00 20 */	blr 
