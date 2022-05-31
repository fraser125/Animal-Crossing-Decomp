lbl_80566F18:
/* 80566F18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80566F1C  7C 08 02 A6 */	mflr r0
/* 80566F20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80566F24  39 61 00 30 */	addi r11, r1, 0x30
/* 80566F28  4B B3 3F A9 */	bl func_8009AED0
/* 80566F2C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80566F30  3C C0 80 6C */	lis r6, data_806BE380@ha /* 0x806BE380@ha */
/* 80566F34  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80566F38  7C 9E 23 78 */	mr r30, r4
/* 80566F3C  3F 85 00 02 */	addis r28, r5, 2
/* 80566F40  7C 7D 1B 78 */	mr r29, r3
/* 80566F44  80 BC 60 4C */	lwz r5, 0x604c(r28)
/* 80566F48  3B E6 E3 80 */	addi r31, r6, data_806BE380@l /* 0x806BE380@l */
/* 80566F4C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80566F50  7D 89 03 A6 */	mtctr r12
/* 80566F54  4E 80 04 21 */	bctrl 
/* 80566F58  2C 03 00 01 */	cmpwi r3, 1
/* 80566F5C  40 82 01 84 */	bne lbl_805670E0
/* 80566F60  3C 80 80 56 */	lis r4, aNPS2_schedule_proc@ha /* 0x80567398@ha */
/* 80566F64  7F A3 EB 78 */	mr r3, r29
/* 80566F68  38 04 73 98 */	addi r0, r4, aNPS2_schedule_proc@l /* 0x80567398@l */
/* 80566F6C  7F C4 F3 78 */	mr r4, r30
/* 80566F70  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80566F74  38 BF 00 2C */	addi r5, r31, 0x2c
/* 80566F78  80 DC 60 4C */	lwz r6, 0x604c(r28)
/* 80566F7C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80566F80  7D 89 03 A6 */	mtctr r12
/* 80566F84  4E 80 04 21 */	bctrl 
/* 80566F88  38 00 00 FF */	li r0, 0xff
/* 80566F8C  98 1D 00 D6 */	stb r0, 0xd6(r29)
/* 80566F90  48 00 0B 35 */	bl aNPS2_count_player_sum
/* 80566F94  90 7D 09 A0 */	stw r3, 0x9a0(r29)
/* 80566F98  38 00 00 00 */	li r0, 0
/* 80566F9C  7F C3 F3 78 */	mr r3, r30
/* 80566FA0  38 80 00 00 */	li r4, 0
/* 80566FA4  B0 1D 09 78 */	sth r0, 0x978(r29)
/* 80566FA8  38 A0 00 00 */	li r5, 0
/* 80566FAC  98 1D 09 7D */	stb r0, 0x97d(r29)
/* 80566FB0  4B E7 3D D5 */	bl mPlib_request_main_demo_wait_type1
/* 80566FB4  7F C3 F3 78 */	mr r3, r30
/* 80566FB8  4B E7 26 89 */	bl get_player_actor_withoutCheck
/* 80566FBC  28 03 00 00 */	cmplwi r3, 0
/* 80566FC0  41 82 00 10 */	beq lbl_80566FD0
/* 80566FC4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80566FC8  60 00 00 80 */	ori r0, r0, 0x80
/* 80566FCC  90 03 00 20 */	stw r0, 0x20(r3)
lbl_80566FD0:
/* 80566FD0  3C C0 80 65 */	lis r6, data_8064980C@ha /* 0x8064980C@ha */
/* 80566FD4  3C A0 80 65 */	lis r5, lit_480@ha /* 0x80649810@ha */
/* 80566FD8  3C 80 80 65 */	lis r4, lit_481@ha /* 0x80649814@ha */
/* 80566FDC  3C 60 80 65 */	lis r3, lit_482@ha /* 0x80649818@ha */
/* 80566FE0  38 E6 98 0C */	addi r7, r6, data_8064980C@l /* 0x8064980C@l */
/* 80566FE4  38 C5 98 10 */	addi r6, r5, lit_480@l /* 0x80649810@l */
/* 80566FE8  C0 67 00 00 */	lfs f3, 0(r7)
/* 80566FEC  38 A4 98 14 */	addi r5, r4, lit_481@l /* 0x80649814@l */
/* 80566FF0  C0 46 00 00 */	lfs f2, 0(r6)
/* 80566FF4  38 83 98 18 */	addi r4, r3, lit_482@l /* 0x80649818@l */
/* 80566FF8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80566FFC  7F C3 F3 78 */	mr r3, r30
/* 80567000  C0 04 00 00 */	lfs f0, 0(r4)
/* 80567004  38 80 00 00 */	li r4, 0
/* 80567008  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8056700C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80567010  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80567014  D0 61 00 08 */	stfs f3, 8(r1)
/* 80567018  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8056701C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80567020  4B E1 7A A5 */	bl Camera2_change_priority
/* 80567024  3C C0 80 65 */	lis r6, lit_483@ha /* 0x8064981C@ha */
/* 80567028  3C A0 80 65 */	lis r5, data_8064980C@ha /* 0x8064980C@ha */
/* 8056702C  3C 80 80 65 */	lis r4, lit_484@ha /* 0x80649820@ha */
/* 80567030  7F C3 F3 78 */	mr r3, r30
/* 80567034  38 E6 98 1C */	addi r7, r6, lit_483@l /* 0x8064981C@l */
/* 80567038  38 C5 98 0C */	addi r6, r5, data_8064980C@l /* 0x8064980C@l */
/* 8056703C  38 A4 98 20 */	addi r5, r4, lit_484@l /* 0x80649820@l */
/* 80567040  C0 27 00 00 */	lfs f1, 0(r7)
/* 80567044  C0 46 00 00 */	lfs f2, 0(r6)
/* 80567048  38 81 00 14 */	addi r4, r1, 0x14
/* 8056704C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80567050  38 A1 00 08 */	addi r5, r1, 8
/* 80567054  38 C0 00 00 */	li r6, 0
/* 80567058  38 E0 00 05 */	li r7, 5
/* 8056705C  4B E1 9E D5 */	bl Camera2_request_main_lock
/* 80567060  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80567064  38 7F 00 24 */	addi r3, r31, 0x24
/* 80567068  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056706C  3C 84 00 02 */	addis r4, r4, 2
/* 80567070  88 04 0F 10 */	lbz r0, 0xf10(r4)
/* 80567074  7C 63 00 AE */	lbzx r3, r3, r0
/* 80567078  48 0C 6F 79 */	bl sAdo_SetOutMode
/* 8056707C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80567080  38 7F 00 28 */	addi r3, r31, 0x28
/* 80567084  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80567088  3C 84 00 02 */	addis r4, r4, 2
/* 8056708C  88 04 0F 11 */	lbz r0, 0xf11(r4)
/* 80567090  7C 63 00 AE */	lbzx r3, r3, r0
/* 80567094  48 0C 6F BD */	bl sAdo_SetVoiceMode
/* 80567098  38 60 00 00 */	li r3, 0
/* 8056709C  38 00 10 00 */	li r0, 0x1000
/* 805670A0  98 7D 08 31 */	stb r3, 0x831(r29)
/* 805670A4  7F A3 EB 78 */	mr r3, r29
/* 805670A8  90 1D 08 40 */	stw r0, 0x840(r29)
/* 805670AC  4B E6 AE 55 */	bl mNpc_GetNpcLooks
/* 805670B0  54 60 10 3A */	slwi r0, r3, 2
/* 805670B4  38 7F 00 48 */	addi r3, r31, 0x48
/* 805670B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805670BC  7F A3 EB 78 */	mr r3, r29
/* 805670C0  90 1D 09 AC */	stw r0, 0x9ac(r29)
/* 805670C4  4B E6 AE 3D */	bl mNpc_GetNpcLooks
/* 805670C8  54 60 10 3A */	slwi r0, r3, 2
/* 805670CC  38 7F 00 60 */	addi r3, r31, 0x60
/* 805670D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 805670D4  38 00 00 00 */	li r0, 0
/* 805670D8  90 7D 09 B0 */	stw r3, 0x9b0(r29)
/* 805670DC  98 1D 09 C4 */	stb r0, 0x9c4(r29)
lbl_805670E0:
/* 805670E0  39 61 00 30 */	addi r11, r1, 0x30
/* 805670E4  4B B3 3E 39 */	bl func_8009AF1C
/* 805670E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805670EC  7C 08 03 A6 */	mtlr r0
/* 805670F0  38 21 00 30 */	addi r1, r1, 0x30
/* 805670F4  4E 80 00 20 */	blr 
