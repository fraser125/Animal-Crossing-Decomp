lbl_80398D40:
/* 80398D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80398D44  7C 08 02 A6 */	mflr r0
/* 80398D48  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398D4C  38 C0 00 00 */	li r6, 0
/* 80398D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80398D54  38 80 00 01 */	li r4, 1
/* 80398D58  80 A3 1C BC */	lwz r5, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 80398D5C  38 60 00 EB */	li r3, 0xeb
/* 80398D60  38 00 00 FF */	li r0, 0xff
/* 80398D64  90 C5 03 00 */	stw r6, 0x300(r5)
/* 80398D68  90 C5 03 04 */	stw r6, 0x304(r5)
/* 80398D6C  90 C5 03 0C */	stw r6, 0x30c(r5)
/* 80398D70  90 C5 03 10 */	stw r6, 0x310(r5)
/* 80398D74  90 C5 03 18 */	stw r6, 0x318(r5)
/* 80398D78  90 C5 03 14 */	stw r6, 0x314(r5)
/* 80398D7C  90 85 03 08 */	stw r4, 0x308(r5)
/* 80398D80  98 65 03 1C */	stb r3, 0x31c(r5)
/* 80398D84  98 05 03 1D */	stb r0, 0x31d(r5)
/* 80398D88  98 65 03 1E */	stb r3, 0x31e(r5)
/* 80398D8C  98 05 03 1F */	stb r0, 0x31f(r5)
/* 80398D90  90 85 02 F8 */	stw r4, 0x2f8(r5)
/* 80398D94  48 00 16 09 */	bl mDemo_Set_SpeakerAble
/* 80398D98  48 00 16 4D */	bl mDemo_Unset_ListenAble
/* 80398D9C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80398DA0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80398DA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80398DA8  48 04 08 99 */	bl get_player_actor_withoutCheck
/* 80398DAC  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398DB0  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80398DB4  80 84 00 00 */	lwz r4, 0(r4)
/* 80398DB8  90 64 00 00 */	stw r3, 0(r4)
/* 80398DBC  38 60 00 01 */	li r3, 1
/* 80398DC0  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 80398DC4  90 04 00 04 */	stw r0, 4(r4)
/* 80398DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80398DCC  7C 08 03 A6 */	mtlr r0
/* 80398DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80398DD4  4E 80 00 20 */	blr 
