lbl_80627EA0:
/* 80627EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80627EA4  7C 08 02 A6 */	mflr r0
/* 80627EA8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80627EAC  3C A0 80 63 */	lis r5, play_init@ha /* 0x8062A5C4@ha */
/* 80627EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80627EB4  38 E6 85 38 */	addi r7, r6, common_data@l /* 0x81138538@l */
/* 80627EB8  38 C0 00 00 */	li r6, 0
/* 80627EBC  38 00 26 00 */	li r0, 0x2600
/* 80627EC0  90 87 00 14 */	stw r4, 0x14(r7)
/* 80627EC4  38 85 A5 C4 */	addi r4, r5, play_init@l /* 0x8062A5C4@l */
/* 80627EC8  98 C3 00 9F */	stb r6, 0x9f(r3)
/* 80627ECC  90 83 00 0C */	stw r4, 0xc(r3)
/* 80627ED0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80627ED4  4B D8 B0 9D */	bl mHm_SetNowHome
/* 80627ED8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80627EDC  38 00 00 00 */	li r0, 0
/* 80627EE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80627EE4  3C 63 00 03 */	addis r3, r3, 3
/* 80627EE8  90 03 85 30 */	stw r0, -0x7ad0(r3)
/* 80627EEC  4B D8 E1 A1 */	bl Kabu_decide_price_schedule
/* 80627EF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80627EF4  38 00 00 01 */	li r0, 1
/* 80627EF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80627EFC  3C 63 00 02 */	addis r3, r3, 2
/* 80627F00  98 03 61 44 */	stb r0, 0x6144(r3)
/* 80627F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80627F08  7C 08 03 A6 */	mtlr r0
/* 80627F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80627F10  4E 80 00 20 */	blr 
