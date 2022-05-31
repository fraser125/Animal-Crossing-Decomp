lbl_803D93F8:
/* 803D93F8  3C 80 80 66 */	lis r4, Player_face_tex_bank_ID@ha /* 0x8065BC14@ha */
/* 803D93FC  38 A3 01 10 */	addi r5, r3, 0x110
/* 803D9400  80 04 BC 14 */	lwz r0, Player_face_tex_bank_ID@l(r4)  /* 0x8065BC14@l */
/* 803D9404  2C 00 00 00 */	cmpwi r0, 0
/* 803D9408  41 80 00 20 */	blt lbl_803D9428
/* 803D940C  1C 60 00 5C */	mulli r3, r0, 0x5c
/* 803D9410  7C 05 1A AE */	lhax r0, r5, r3
/* 803D9414  2C 00 00 00 */	cmpwi r0, 0
/* 803D9418  40 81 00 10 */	ble lbl_803D9428
/* 803D941C  7C 65 1A 14 */	add r3, r5, r3
/* 803D9420  80 63 00 04 */	lwz r3, 4(r3)
/* 803D9424  4E 80 00 20 */	blr 
lbl_803D9428:
/* 803D9428  38 60 00 00 */	li r3, 0
/* 803D942C  4E 80 00 20 */	blr 
