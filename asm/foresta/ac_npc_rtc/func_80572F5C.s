lbl_80572F5C:
/* 80572F5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80572F60  7C 08 02 A6 */	mflr r0
/* 80572F64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80572F68  39 61 00 30 */	addi r11, r1, 0x30
/* 80572F6C  4B B2 7F 65 */	bl func_8009AED0
/* 80572F70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80572F74  3C C0 80 6C */	lis r6, data_806BF548@ha /* 0x806BF548@ha */
/* 80572F78  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80572F7C  7C 9E 23 78 */	mr r30, r4
/* 80572F80  3F 85 00 02 */	addis r28, r5, 2
/* 80572F84  7C 7D 1B 78 */	mr r29, r3
/* 80572F88  80 BC 60 4C */	lwz r5, 0x604c(r28)
/* 80572F8C  3B E6 F5 48 */	addi r31, r6, data_806BF548@l /* 0x806BF548@l */
/* 80572F90  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80572F94  7D 89 03 A6 */	mtctr r12
/* 80572F98  4E 80 04 21 */	bctrl 
/* 80572F9C  2C 03 00 01 */	cmpwi r3, 1
/* 80572FA0  40 82 01 40 */	bne lbl_805730E0
/* 80572FA4  3C 80 80 57 */	lis r4, aNRTC_schedule_proc@ha /* 0x805736C8@ha */
/* 80572FA8  7F A3 EB 78 */	mr r3, r29
/* 80572FAC  38 04 36 C8 */	addi r0, r4, aNRTC_schedule_proc@l /* 0x805736C8@l */
/* 80572FB0  7F C4 F3 78 */	mr r4, r30
/* 80572FB4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80572FB8  38 BF 00 2C */	addi r5, r31, 0x2c
/* 80572FBC  80 DC 60 4C */	lwz r6, 0x604c(r28)
/* 80572FC0  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80572FC4  7D 89 03 A6 */	mtctr r12
/* 80572FC8  4E 80 04 21 */	bctrl 
/* 80572FCC  38 00 00 FF */	li r0, 0xff
/* 80572FD0  7F C3 F3 78 */	mr r3, r30
/* 80572FD4  98 1D 00 D6 */	stb r0, 0xd6(r29)
/* 80572FD8  38 80 00 00 */	li r4, 0
/* 80572FDC  38 A0 00 00 */	li r5, 0
/* 80572FE0  4B E6 7D A5 */	bl mPlib_request_main_demo_wait_type1
/* 80572FE4  7F C3 F3 78 */	mr r3, r30
/* 80572FE8  4B E6 66 59 */	bl get_player_actor_withoutCheck
/* 80572FEC  28 03 00 00 */	cmplwi r3, 0
/* 80572FF0  41 82 00 10 */	beq lbl_80573000
/* 80572FF4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80572FF8  60 00 00 80 */	ori r0, r0, 0x80
/* 80572FFC  90 03 00 20 */	stw r0, 0x20(r3)
lbl_80573000:
/* 80573000  3C C0 80 65 */	lis r6, data_8064991C@ha /* 0x8064991C@ha */
/* 80573004  3C A0 80 65 */	lis r5, lit_474@ha /* 0x80649920@ha */
/* 80573008  3C 80 80 65 */	lis r4, lit_475@ha /* 0x80649924@ha */
/* 8057300C  3C 60 80 65 */	lis r3, lit_476@ha /* 0x80649928@ha */
/* 80573010  38 E6 99 1C */	addi r7, r6, data_8064991C@l /* 0x8064991C@l */
/* 80573014  38 C5 99 20 */	addi r6, r5, lit_474@l /* 0x80649920@l */
/* 80573018  C0 67 00 00 */	lfs f3, 0(r7)
/* 8057301C  38 A4 99 24 */	addi r5, r4, lit_475@l /* 0x80649924@l */
/* 80573020  C0 46 00 00 */	lfs f2, 0(r6)
/* 80573024  38 83 99 28 */	addi r4, r3, lit_476@l /* 0x80649928@l */
/* 80573028  C0 25 00 00 */	lfs f1, 0(r5)
/* 8057302C  7F C3 F3 78 */	mr r3, r30
/* 80573030  C0 04 00 00 */	lfs f0, 0(r4)
/* 80573034  38 80 00 00 */	li r4, 0
/* 80573038  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8057303C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80573040  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80573044  D0 61 00 08 */	stfs f3, 8(r1)
/* 80573048  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8057304C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80573050  4B E0 BA 75 */	bl Camera2_change_priority
/* 80573054  3C C0 80 65 */	lis r6, lit_477@ha /* 0x8064992C@ha */
/* 80573058  3C A0 80 65 */	lis r5, data_8064991C@ha /* 0x8064991C@ha */
/* 8057305C  3C 80 80 65 */	lis r4, lit_478@ha /* 0x80649930@ha */
/* 80573060  7F C3 F3 78 */	mr r3, r30
/* 80573064  38 E6 99 2C */	addi r7, r6, lit_477@l /* 0x8064992C@l */
/* 80573068  38 C5 99 1C */	addi r6, r5, data_8064991C@l /* 0x8064991C@l */
/* 8057306C  38 A4 99 30 */	addi r5, r4, lit_478@l /* 0x80649930@l */
/* 80573070  C0 27 00 00 */	lfs f1, 0(r7)
/* 80573074  C0 46 00 00 */	lfs f2, 0(r6)
/* 80573078  38 81 00 14 */	addi r4, r1, 0x14
/* 8057307C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80573080  38 A1 00 08 */	addi r5, r1, 8
/* 80573084  38 C0 00 00 */	li r6, 0
/* 80573088  38 E0 00 05 */	li r7, 5
/* 8057308C  4B E0 DE A5 */	bl Camera2_request_main_lock
/* 80573090  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80573094  38 7F 00 24 */	addi r3, r31, 0x24
/* 80573098  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057309C  3C 84 00 02 */	addis r4, r4, 2
/* 805730A0  88 04 0F 10 */	lbz r0, 0xf10(r4)
/* 805730A4  7C 63 00 AE */	lbzx r3, r3, r0
/* 805730A8  48 0B AF 49 */	bl sAdo_SetOutMode
/* 805730AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805730B0  38 7F 00 28 */	addi r3, r31, 0x28
/* 805730B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805730B8  3C 84 00 02 */	addis r4, r4, 2
/* 805730BC  88 04 0F 11 */	lbz r0, 0xf11(r4)
/* 805730C0  7C 63 00 AE */	lbzx r3, r3, r0
/* 805730C4  48 0B AF 8D */	bl sAdo_SetVoiceMode
/* 805730C8  38 60 00 00 */	li r3, 0
/* 805730CC  38 00 00 09 */	li r0, 9
/* 805730D0  98 7D 08 31 */	stb r3, 0x831(r29)
/* 805730D4  98 1D 09 71 */	stb r0, 0x971(r29)
/* 805730D8  B0 7D 09 78 */	sth r3, 0x978(r29)
/* 805730DC  90 7D 09 A0 */	stw r3, 0x9a0(r29)
lbl_805730E0:
/* 805730E0  39 61 00 30 */	addi r11, r1, 0x30
/* 805730E4  4B B2 7E 39 */	bl func_8009AF1C
/* 805730E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805730EC  7C 08 03 A6 */	mtlr r0
/* 805730F0  38 21 00 30 */	addi r1, r1, 0x30
/* 805730F4  4E 80 00 20 */	blr 
