lbl_80495FC0:
/* 80495FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495FC4  7C 08 02 A6 */	mflr r0
/* 80495FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495FCC  80 03 01 80 */	lwz r0, 0x180(r3)
/* 80495FD0  28 00 00 00 */	cmplwi r0, 0
/* 80495FD4  40 82 00 30 */	bne lbl_80496004
/* 80495FD8  38 00 00 00 */	li r0, 0
/* 80495FDC  98 04 1F 51 */	stb r0, 0x1f51(r4)
/* 80495FE0  4B ED E4 61 */	bl Actor_delete
/* 80495FE4  38 60 00 00 */	li r3, 0
/* 80495FE8  4B F4 3F 45 */	bl mPlib_Set_unable_wade
/* 80495FEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80495FF0  38 00 00 00 */	li r0, 0
/* 80495FF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80495FF8  3C 63 00 03 */	addis r3, r3, 3
/* 80495FFC  98 03 88 68 */	stb r0, -0x7798(r3)
/* 80496000  48 00 00 08 */	b lbl_80496008
lbl_80496004:
/* 80496004  4B FF FD 3D */	bl aRSD_set_point_light
lbl_80496008:
/* 80496008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049600C  7C 08 03 A6 */	mtlr r0
/* 80496010  38 21 00 10 */	addi r1, r1, 0x10
/* 80496014  4E 80 00 20 */	blr 
