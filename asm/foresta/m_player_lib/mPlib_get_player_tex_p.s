lbl_803D9384:
/* 803D9384  3C A0 81 17 */	lis r5, data_8116EDE0@ha /* 0x8116EDE0@ha */
/* 803D9388  3C 80 80 66 */	lis r4, Player_Tex_bank_ID@ha /* 0x8065BC04@ha */
/* 803D938C  80 05 ED E0 */	lwz r0, data_8116EDE0@l(r5)  /* 0x8116EDE0@l */
/* 803D9390  38 C3 01 10 */	addi r6, r3, 0x110
/* 803D9394  38 64 BC 04 */	addi r3, r4, Player_Tex_bank_ID@l /* 0x8065BC04@l */
/* 803D9398  54 00 10 3A */	slwi r0, r0, 2
/* 803D939C  7C 03 00 2E */	lwzx r0, r3, r0
/* 803D93A0  2C 00 00 00 */	cmpwi r0, 0
/* 803D93A4  41 80 00 20 */	blt lbl_803D93C4
/* 803D93A8  1C 60 00 5C */	mulli r3, r0, 0x5c
/* 803D93AC  7C 06 1A AE */	lhax r0, r6, r3
/* 803D93B0  2C 00 00 00 */	cmpwi r0, 0
/* 803D93B4  40 81 00 10 */	ble lbl_803D93C4
/* 803D93B8  7C 66 1A 14 */	add r3, r6, r3
/* 803D93BC  80 63 00 04 */	lwz r3, 4(r3)
/* 803D93C0  4E 80 00 20 */	blr 
lbl_803D93C4:
/* 803D93C4  38 60 00 00 */	li r3, 0
/* 803D93C8  4E 80 00 20 */	blr 
