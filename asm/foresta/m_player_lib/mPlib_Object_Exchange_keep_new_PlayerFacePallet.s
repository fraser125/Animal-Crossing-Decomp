lbl_803D92D8:
/* 803D92D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D92DC  7C 08 02 A6 */	mflr r0
/* 803D92E0  38 C0 00 20 */	li r6, 0x20
/* 803D92E4  38 E0 00 01 */	li r7, 1
/* 803D92E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D92EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D92F0  7C BF 2B 78 */	mr r31, r5
/* 803D92F4  38 A0 00 00 */	li r5, 0
/* 803D92F8  93 C1 00 08 */	stw r30, 8(r1)
/* 803D92FC  7C 9E 23 78 */	mr r30, r4
/* 803D9300  38 80 00 34 */	li r4, 0x34
/* 803D9304  4B FF FC 11 */	bl mPlib_Object_Exchange_keep_new
/* 803D9308  3C 80 80 66 */	lis r4, Player_face_pallet_bank_ID@ha /* 0x8065BC18@ha */
/* 803D930C  7C BE 1A 14 */	add r5, r30, r3
/* 803D9310  57 E0 10 3A */	slwi r0, r31, 2
/* 803D9314  38 64 BC 18 */	addi r3, r4, Player_face_pallet_bank_ID@l /* 0x8065BC18@l */
/* 803D9318  7C A3 01 2E */	stwx r5, r3, r0
/* 803D931C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D9320  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D9324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9328  7C 08 03 A6 */	mtlr r0
/* 803D932C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9330  4E 80 00 20 */	blr 
