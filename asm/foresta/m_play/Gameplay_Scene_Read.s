lbl_8062B4D8:
/* 8062B4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B4DC  7C 08 02 A6 */	mflr r0
/* 8062B4E0  7C 88 07 34 */	extsh r8, r4
/* 8062B4E4  3C A0 80 6D */	lis r5, scene_word_data@ha /* 0x806D4784@ha */
/* 8062B4E8  1C E8 00 14 */	mulli r7, r8, 0x14
/* 8062B4EC  3C C0 80 66 */	lis r6, scene_data_status@ha /* 0x8065DDC8@ha */
/* 8062B4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B4F4  38 A5 47 84 */	addi r5, r5, scene_word_data@l /* 0x806D4784@l */
/* 8062B4F8  38 06 DD C8 */	addi r0, r6, scene_data_status@l /* 0x8065DDC8@l */
/* 8062B4FC  7C E0 3A 14 */	add r7, r0, r7
/* 8062B500  38 C0 00 00 */	li r6, 0
/* 8062B504  55 00 10 3A */	slwi r0, r8, 2
/* 8062B508  98 C7 00 13 */	stb r6, 0x13(r7)
/* 8062B50C  90 E3 24 00 */	stw r7, 0x2400(r3)
/* 8062B510  B0 83 00 E0 */	sth r4, 0xe0(r3)
/* 8062B514  7C 05 00 2E */	lwzx r0, r5, r0
/* 8062B518  90 03 01 0C */	stw r0, 0x10c(r3)
/* 8062B51C  98 C7 00 13 */	stb r6, 0x13(r7)
/* 8062B520  4B FF FF 05 */	bl Gameplay_Scene_Init
/* 8062B524  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062B528  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062B52C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8062B530  4B FF FF 65 */	bl mPl_SceneNo2SoundRoomType
/* 8062B534  48 00 30 3D */	bl sAdo_RoomType
/* 8062B538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B53C  7C 08 03 A6 */	mtlr r0
/* 8062B540  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B544  4E 80 00 20 */	blr 
