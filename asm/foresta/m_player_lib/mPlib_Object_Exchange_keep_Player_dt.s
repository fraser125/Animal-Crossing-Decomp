lbl_803D9334:
/* 803D9334  3C 80 80 66 */	lis r4, data_8065B8C8@ha /* 0x8065B8C8@ha */
/* 803D9338  3C 60 81 17 */	lis r3, data_8116EDE0@ha /* 0x8116EDE0@ha */
/* 803D933C  39 24 B8 C8 */	addi r9, r4, data_8065B8C8@l /* 0x8065B8C8@l */
/* 803D9340  39 00 FF FF */	li r8, -1
/* 803D9344  38 C3 ED E0 */	addi r6, r3, data_8116EDE0@l /* 0x8116EDE0@l */
/* 803D9348  38 00 00 00 */	li r0, 0
/* 803D934C  3C A0 81 17 */	lis r5, Player_face_bank_ID_Index@ha /* 0x8116EDE4@ha */
/* 803D9350  38 E9 03 50 */	addi r7, r9, 0x350
/* 803D9354  38 89 03 3C */	addi r4, r9, 0x33c
/* 803D9358  38 69 03 44 */	addi r3, r9, 0x344
/* 803D935C  91 09 03 4C */	stw r8, 0x34c(r9)
/* 803D9360  91 09 03 50 */	stw r8, 0x350(r9)
/* 803D9364  91 07 00 04 */	stw r8, 4(r7)
/* 803D9368  90 06 00 00 */	stw r0, 0(r6)
/* 803D936C  90 05 ED E4 */	stw r0, Player_face_bank_ID_Index@l(r5)  /* 0x8116EDE4@l */
/* 803D9370  91 09 03 3C */	stw r8, 0x33c(r9)
/* 803D9374  91 04 00 04 */	stw r8, 4(r4)
/* 803D9378  91 09 03 44 */	stw r8, 0x344(r9)
/* 803D937C  91 03 00 04 */	stw r8, 4(r3)
/* 803D9380  4E 80 00 20 */	blr 
