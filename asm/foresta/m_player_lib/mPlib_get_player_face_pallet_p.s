lbl_803D9430:
/* 803D9430  3C A0 81 17 */	lis r5, Player_face_bank_ID_Index@ha /* 0x8116EDE4@ha */
/* 803D9434  3C 80 80 66 */	lis r4, Player_face_pallet_bank_ID@ha /* 0x8065BC18@ha */
/* 803D9438  80 05 ED E4 */	lwz r0, Player_face_bank_ID_Index@l(r5)  /* 0x8116EDE4@l */
/* 803D943C  38 C3 01 10 */	addi r6, r3, 0x110
/* 803D9440  38 64 BC 18 */	addi r3, r4, Player_face_pallet_bank_ID@l /* 0x8065BC18@l */
/* 803D9444  54 00 10 3A */	slwi r0, r0, 2
/* 803D9448  7C 03 00 2E */	lwzx r0, r3, r0
/* 803D944C  2C 00 00 00 */	cmpwi r0, 0
/* 803D9450  41 80 00 20 */	blt lbl_803D9470
/* 803D9454  1C 60 00 5C */	mulli r3, r0, 0x5c
/* 803D9458  7C 06 1A AE */	lhax r0, r6, r3
/* 803D945C  2C 00 00 00 */	cmpwi r0, 0
/* 803D9460  40 81 00 10 */	ble lbl_803D9470
/* 803D9464  7C 66 1A 14 */	add r3, r6, r3
/* 803D9468  80 63 00 04 */	lwz r3, 4(r3)
/* 803D946C  4E 80 00 20 */	blr 
lbl_803D9470:
/* 803D9470  38 60 00 00 */	li r3, 0
/* 803D9474  4E 80 00 20 */	blr 
