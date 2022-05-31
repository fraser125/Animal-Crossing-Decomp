lbl_8062B760:
/* 8062B760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B764  7C 08 02 A6 */	mflr r0
/* 8062B768  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8062B76C  3C 80 80 6D */	lis r4, demo_npc_list@ha /* 0x806D48D4@ha */
/* 8062B770  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B774  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8062B778  38 04 48 D4 */	addi r0, r4, demo_npc_list@l /* 0x806D48D4@l */
/* 8062B77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062B780  3F E5 00 01 */	addis r31, r5, 1
/* 8062B784  3B FF 74 38 */	addi r31, r31, 0x7438
/* 8062B788  7C 65 1B 78 */	mr r5, r3
/* 8062B78C  7C 03 03 78 */	mr r3, r0
/* 8062B790  7F E4 FB 78 */	mr r4, r31
/* 8062B794  4B DA 3B DD */	bl mNpc_SetAnimalTitleDemo
/* 8062B798  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062B79C  3C 60 80 6D */	lis r3, demo_npc_num@ha /* 0x806D49EC@ha */
/* 8062B7A0  38 E4 85 38 */	addi r7, r4, common_data@l /* 0x81138538@l */
/* 8062B7A4  7F E4 FB 78 */	mr r4, r31
/* 8062B7A8  38 A3 49 EC */	addi r5, r3, demo_npc_num@l /* 0x806D49EC@l */
/* 8062B7AC  38 C0 00 00 */	li r6, 0
/* 8062B7B0  3C 67 00 02 */	addis r3, r7, 2
/* 8062B7B4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8062B7B8  38 63 61 64 */	addi r3, r3, 0x6164
/* 8062B7BC  4B DA 42 FD */	bl mNpc_SetNpcList
/* 8062B7C0  3C 60 80 6D */	lis r3, demo_npc_num@ha /* 0x806D49EC@ha */
/* 8062B7C4  38 63 49 EC */	addi r3, r3, demo_npc_num@l /* 0x806D49EC@l */
/* 8062B7C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8062B7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062B7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B7D4  7C 08 03 A6 */	mtlr r0
/* 8062B7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B7DC  4E 80 00 20 */	blr 
