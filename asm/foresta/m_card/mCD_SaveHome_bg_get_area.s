lbl_803FBB54:
/* 803FBB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FBB58  7C 08 02 A6 */	mflr r0
/* 803FBB5C  3C A0 81 1C */	lis r5, SoftResetEnable@ha /* 0x811C5324@ha */
/* 803FBB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FBB64  38 C5 53 24 */	addi r6, r5, SoftResetEnable@l /* 0x811C5324@l */
/* 803FBB68  38 00 00 00 */	li r0, 0
/* 803FBB6C  38 A0 00 01 */	li r5, 1
/* 803FBB70  98 06 00 00 */	stb r0, 0(r6)
/* 803FBB74  38 C0 00 00 */	li r6, 0
/* 803FBB78  4B FF FE B1 */	bl mCD_bg_get_area_common
/* 803FBB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FBB80  7C 08 03 A6 */	mtlr r0
/* 803FBB84  38 21 00 10 */	addi r1, r1, 0x10
/* 803FBB88  4E 80 00 20 */	blr 
