lbl_80629BC0:
/* 80629BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629BC4  7C 08 02 A6 */	mflr r0
/* 80629BC8  3C 80 80 40 */	lis r4, mCD_GetThisLandSlotNo_code@ha /* 0x804008F0@ha */
/* 80629BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80629BD4  7C 7F 1B 78 */	mr r31, r3
/* 80629BD8  38 64 08 F0 */	addi r3, r4, mCD_GetThisLandSlotNo_code@l /* 0x804008F0@l */
/* 80629BDC  4B A1 83 1D */	bl famicom_setCallback_getSaveChan
/* 80629BE0  4B D5 31 61 */	bl mBGM_ct
/* 80629BE4  4B DD A2 71 */	bl mVibctl_ct
/* 80629BE8  4B D6 BE D9 */	bl common_data_init
/* 80629BEC  38 00 00 00 */	li r0, 0
/* 80629BF0  3C 60 80 63 */	lis r3, second_game_init@ha /* 0x8062B644@ha */
/* 80629BF4  98 1F 00 9F */	stb r0, 0x9f(r31)
/* 80629BF8  38 63 B6 44 */	addi r3, r3, second_game_init@l /* 0x8062B644@l */
/* 80629BFC  38 00 00 E0 */	li r0, 0xe0
/* 80629C00  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80629C04  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80629C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80629C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629C10  7C 08 03 A6 */	mtlr r0
/* 80629C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80629C18  4E 80 00 20 */	blr 
