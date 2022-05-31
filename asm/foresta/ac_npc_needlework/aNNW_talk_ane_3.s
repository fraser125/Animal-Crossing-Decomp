lbl_8056435C:
/* 8056435C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80564360  7C 08 02 A6 */	mflr r0
/* 80564364  38 80 00 09 */	li r4, 9
/* 80564368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056436C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80564370  7C 7F 1B 78 */	mr r31, r3
/* 80564374  38 60 00 04 */	li r3, 4
/* 80564378  4B E3 41 05 */	bl mDemo_Get_OrderValue
/* 8056437C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80564380  41 82 00 54 */	beq lbl_805643D4
/* 80564384  7F E3 FB 78 */	mr r3, r31
/* 80564388  4B FF D5 FD */	bl aNNW_turn_player
/* 8056438C  7F E3 FB 78 */	mr r3, r31
/* 80564390  38 80 00 0B */	li r4, 0xb
/* 80564394  48 00 00 F5 */	bl aNNW_change_talk_proc
/* 80564398  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8056439C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805643A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805643A4  4B E7 52 9D */	bl get_player_actor_withoutCheck
/* 805643A8  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805643AC  7C 64 1B 78 */	mr r4, r3
/* 805643B0  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 805643B4  38 C0 00 06 */	li r6, 6
/* 805643B8  80 63 00 00 */	lwz r3, 0(r3)
/* 805643BC  7F E5 FB 78 */	mr r5, r31
/* 805643C0  4B E1 B2 D9 */	bl Camera2_request_main_talk
/* 805643C4  38 60 00 04 */	li r3, 4
/* 805643C8  38 80 00 09 */	li r4, 9
/* 805643CC  38 A0 00 00 */	li r5, 0
/* 805643D0  4B E3 40 69 */	bl mDemo_Set_OrderValue
lbl_805643D4:
/* 805643D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805643D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805643DC  7C 08 03 A6 */	mtlr r0
/* 805643E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805643E4  4E 80 00 20 */	blr 
