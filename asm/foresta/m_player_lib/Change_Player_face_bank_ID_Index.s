lbl_803D9000:
/* 803D9000  3C 60 81 17 */	lis r3, Player_face_bank_ID_Index@ha /* 0x8116EDE4@ha */
/* 803D9004  38 83 ED E4 */	addi r4, r3, Player_face_bank_ID_Index@l /* 0x8116EDE4@l */
/* 803D9008  80 04 00 00 */	lwz r0, 0(r4)
/* 803D900C  68 03 00 01 */	xori r3, r0, 1
/* 803D9010  90 64 00 00 */	stw r3, 0(r4)
/* 803D9014  4E 80 00 20 */	blr 
