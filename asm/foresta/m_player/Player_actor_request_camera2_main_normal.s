lbl_804DACDC:
/* 804DACDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DACE0  7C 08 02 A6 */	mflr r0
/* 804DACE4  38 80 00 00 */	li r4, 0
/* 804DACE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DACEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DACF0  7C 7F 1B 78 */	mr r31, r3
/* 804DACF4  4B EA 3D D1 */	bl Camera2_change_priority
/* 804DACF8  7F E3 FB 78 */	mr r3, r31
/* 804DACFC  38 80 00 00 */	li r4, 0
/* 804DAD00  38 A0 00 05 */	li r5, 5
/* 804DAD04  4B EA 59 D5 */	bl Camera2_request_main_normal
/* 804DAD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAD0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAD10  7C 08 03 A6 */	mtlr r0
/* 804DAD14  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAD18  4E 80 00 20 */	blr 
