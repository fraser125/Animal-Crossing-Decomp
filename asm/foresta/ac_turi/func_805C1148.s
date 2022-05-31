lbl_805C1148:
/* 805C1148  3D 00 80 5C */	lis r8, aTRC_clip_get_msgno@ha /* 0x805C12A8@ha */
/* 805C114C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C1150  39 08 12 A8 */	addi r8, r8, aTRC_clip_get_msgno@l /* 0x805C12A8@l */
/* 805C1154  3C E0 81 21 */	lis r7, aTRC_clip@ha /* 0x8120FFE8@ha */
/* 805C1158  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C115C  3C C0 80 5C */	lis r6, aTRC_clip_random_topsize@ha /* 0x805C1418@ha */
/* 805C1160  3C A0 80 5C */	lis r5, aTRC_clip_set_topname@ha /* 0x805C153C@ha */
/* 805C1164  3C 80 80 5C */	lis r4, aTRC_clip_fish_rndsize@ha /* 0x805C1288@ha */
/* 805C1168  95 07 FF E8 */	stwu r8, aTRC_clip@l(r7)  /* 0x8120FFE8@l */
/* 805C116C  38 C6 14 18 */	addi r6, r6, aTRC_clip_random_topsize@l /* 0x805C1418@l */
/* 805C1170  38 A5 15 3C */	addi r5, r5, aTRC_clip_set_topname@l /* 0x805C153C@l */
/* 805C1174  38 04 12 88 */	addi r0, r4, aTRC_clip_fish_rndsize@l /* 0x805C1288@l */
/* 805C1178  3C 63 00 02 */	addis r3, r3, 2
/* 805C117C  90 C7 00 04 */	stw r6, 4(r7)
/* 805C1180  90 A7 00 08 */	stw r5, 8(r7)
/* 805C1184  90 07 00 0C */	stw r0, 0xc(r7)
/* 805C1188  90 E3 60 F0 */	stw r7, 0x60f0(r3)
/* 805C118C  4E 80 00 20 */	blr 
