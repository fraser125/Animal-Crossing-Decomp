lbl_8053F9BC:
/* 8053F9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F9C0  7C 08 02 A6 */	mflr r0
/* 8053F9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F9CC  7C 7F 1B 78 */	mr r31, r3
/* 8053F9D0  4B FF D8 31 */	bl aNPC_check_feel_demoCode
/* 8053F9D4  7F E3 FB 78 */	mr r3, r31
/* 8053F9D8  4B FF D4 21 */	bl aNPC_check_manpu_demoCode
/* 8053F9DC  7F E3 FB 78 */	mr r3, r31
/* 8053F9E0  4B FF D5 C9 */	bl aNPC_check_timing_demoCode
/* 8053F9E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F9E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F9EC  7C 08 03 A6 */	mtlr r0
/* 8053F9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F9F4  4E 80 00 20 */	blr 
