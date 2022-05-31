lbl_803A4140:
/* 803A4140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4144  7C 08 02 A6 */	mflr r0
/* 803A4148  3C C0 80 65 */	lis r6, g_block_type_p@ha /* 0x80653D1C@ha */
/* 803A414C  3C A0 80 65 */	lis r5, g_block_kind_p@ha /* 0x80653D20@ha */
/* 803A4150  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A4154  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4158  3C 60 80 81 */	lis r3, data_8080DC80@ha /* 0x8080DC80@ha */
/* 803A415C  39 06 3D 1C */	addi r8, r6, g_block_type_p@l /* 0x80653D1C@l */
/* 803A4160  38 C3 DC 80 */	addi r6, r3, data_8080DC80@l /* 0x8080DC80@l */
/* 803A4164  38 E5 3D 20 */	addi r7, r5, g_block_kind_p@l /* 0x80653D20@l */
/* 803A4168  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A416C  80 68 00 00 */	lwz r3, 0(r8)
/* 803A4170  3C A4 00 01 */	addis r5, r4, 1
/* 803A4174  80 87 00 00 */	lwz r4, 0(r7)
/* 803A4178  38 E0 00 46 */	li r7, 0x46
/* 803A417C  38 A5 73 A8 */	addi r5, r5, 0x73a8
/* 803A4180  4B FF FF 41 */	bl mFM_SetBlockKind
/* 803A4184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A4188  7C 08 03 A6 */	mtlr r0
/* 803A418C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4190  4E 80 00 20 */	blr 
