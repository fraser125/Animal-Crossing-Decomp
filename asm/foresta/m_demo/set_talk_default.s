lbl_80398DD8:
/* 80398DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80398DDC  7C 08 02 A6 */	mflr r0
/* 80398DE0  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398DE4  38 E0 00 00 */	li r7, 0
/* 80398DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80398DEC  38 A0 00 01 */	li r5, 1
/* 80398DF0  80 C3 1C BC */	lwz r6, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 80398DF4  38 80 00 EB */	li r4, 0xeb
/* 80398DF8  38 60 00 FF */	li r3, 0xff
/* 80398DFC  38 00 00 03 */	li r0, 3
/* 80398E00  90 E6 03 00 */	stw r7, 0x300(r6)
/* 80398E04  90 A6 03 04 */	stw r5, 0x304(r6)
/* 80398E08  90 A6 03 0C */	stw r5, 0x30c(r6)
/* 80398E0C  90 A6 03 10 */	stw r5, 0x310(r6)
/* 80398E10  90 E6 03 18 */	stw r7, 0x318(r6)
/* 80398E14  90 E6 03 14 */	stw r7, 0x314(r6)
/* 80398E18  90 A6 03 08 */	stw r5, 0x308(r6)
/* 80398E1C  98 86 03 1C */	stb r4, 0x31c(r6)
/* 80398E20  98 66 03 1D */	stb r3, 0x31d(r6)
/* 80398E24  98 86 03 1E */	stb r4, 0x31e(r6)
/* 80398E28  98 66 03 1F */	stb r3, 0x31f(r6)
/* 80398E2C  90 06 02 F8 */	stw r0, 0x2f8(r6)
/* 80398E30  48 00 15 9D */	bl mDemo_Unset_SpeakerAble
/* 80398E34  48 00 15 B1 */	bl mDemo_Unset_ListenAble
/* 80398E38  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80398E3C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80398E40  80 63 00 00 */	lwz r3, 0(r3)
/* 80398E44  48 04 07 FD */	bl get_player_actor_withoutCheck
/* 80398E48  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398E4C  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80398E50  80 84 00 00 */	lwz r4, 0(r4)
/* 80398E54  90 64 00 00 */	stw r3, 0(r4)
/* 80398E58  38 60 00 01 */	li r3, 1
/* 80398E5C  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 80398E60  90 04 00 04 */	stw r0, 4(r4)
/* 80398E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80398E68  7C 08 03 A6 */	mtlr r0
/* 80398E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80398E70  4E 80 00 20 */	blr 
