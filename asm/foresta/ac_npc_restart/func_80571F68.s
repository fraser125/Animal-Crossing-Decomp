lbl_80571F68:
/* 80571F68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80571F6C  7C 08 02 A6 */	mflr r0
/* 80571F70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80571F74  39 61 00 30 */	addi r11, r1, 0x30
/* 80571F78  4B B2 8F 59 */	bl func_8009AED0
/* 80571F7C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80571F80  3C C0 80 6C */	lis r6, data_806BF3F8@ha /* 0x806BF3F8@ha */
/* 80571F84  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80571F88  7C 9E 23 78 */	mr r30, r4
/* 80571F8C  3F 85 00 02 */	addis r28, r5, 2
/* 80571F90  7C 7D 1B 78 */	mr r29, r3
/* 80571F94  80 BC 60 4C */	lwz r5, 0x604c(r28)
/* 80571F98  3B E6 F3 F8 */	addi r31, r6, data_806BF3F8@l /* 0x806BF3F8@l */
/* 80571F9C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80571FA0  7D 89 03 A6 */	mtctr r12
/* 80571FA4  4E 80 04 21 */	bctrl 
/* 80571FA8  2C 03 00 01 */	cmpwi r3, 1
/* 80571FAC  40 82 01 64 */	bne lbl_80572110
/* 80571FB0  3C 80 80 57 */	lis r4, aNRST_schedule_proc@ha /* 0x80572508@ha */
/* 80571FB4  7F A3 EB 78 */	mr r3, r29
/* 80571FB8  38 04 25 08 */	addi r0, r4, aNRST_schedule_proc@l /* 0x80572508@l */
/* 80571FBC  7F C4 F3 78 */	mr r4, r30
/* 80571FC0  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80571FC4  38 BF 00 2C */	addi r5, r31, 0x2c
/* 80571FC8  80 DC 60 4C */	lwz r6, 0x604c(r28)
/* 80571FCC  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80571FD0  7D 89 03 A6 */	mtctr r12
/* 80571FD4  4E 80 04 21 */	bctrl 
/* 80571FD8  38 00 00 FF */	li r0, 0xff
/* 80571FDC  7F C3 F3 78 */	mr r3, r30
/* 80571FE0  98 1D 00 D6 */	stb r0, 0xd6(r29)
/* 80571FE4  38 80 00 00 */	li r4, 0
/* 80571FE8  38 A0 00 00 */	li r5, 0
/* 80571FEC  4B E6 8D 99 */	bl mPlib_request_main_demo_wait_type1
/* 80571FF0  7F C3 F3 78 */	mr r3, r30
/* 80571FF4  4B E6 76 4D */	bl get_player_actor_withoutCheck
/* 80571FF8  28 03 00 00 */	cmplwi r3, 0
/* 80571FFC  41 82 00 10 */	beq lbl_8057200C
/* 80572000  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80572004  60 00 00 80 */	ori r0, r0, 0x80
/* 80572008  90 03 00 20 */	stw r0, 0x20(r3)
lbl_8057200C:
/* 8057200C  3C C0 80 65 */	lis r6, data_80649904@ha /* 0x80649904@ha */
/* 80572010  3C A0 80 65 */	lis r5, lit_474@ha /* 0x80649908@ha */
/* 80572014  3C 80 80 65 */	lis r4, lit_475@ha /* 0x8064990C@ha */
/* 80572018  3C 60 80 65 */	lis r3, lit_476@ha /* 0x80649910@ha */
/* 8057201C  38 E6 99 04 */	addi r7, r6, data_80649904@l /* 0x80649904@l */
/* 80572020  38 C5 99 08 */	addi r6, r5, lit_474@l /* 0x80649908@l */
/* 80572024  C0 67 00 00 */	lfs f3, 0(r7)
/* 80572028  38 A4 99 0C */	addi r5, r4, lit_475@l /* 0x8064990C@l */
/* 8057202C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80572030  38 83 99 10 */	addi r4, r3, lit_476@l /* 0x80649910@l */
/* 80572034  C0 25 00 00 */	lfs f1, 0(r5)
/* 80572038  7F C3 F3 78 */	mr r3, r30
/* 8057203C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80572040  38 80 00 00 */	li r4, 0
/* 80572044  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80572048  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8057204C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80572050  D0 61 00 08 */	stfs f3, 8(r1)
/* 80572054  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80572058  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057205C  4B E0 CA 69 */	bl Camera2_change_priority
/* 80572060  3C C0 80 65 */	lis r6, lit_477@ha /* 0x80649914@ha */
/* 80572064  3C A0 80 65 */	lis r5, data_80649904@ha /* 0x80649904@ha */
/* 80572068  3C 80 80 65 */	lis r4, lit_478@ha /* 0x80649918@ha */
/* 8057206C  7F C3 F3 78 */	mr r3, r30
/* 80572070  38 E6 99 14 */	addi r7, r6, lit_477@l /* 0x80649914@l */
/* 80572074  38 C5 99 04 */	addi r6, r5, data_80649904@l /* 0x80649904@l */
/* 80572078  38 A4 99 18 */	addi r5, r4, lit_478@l /* 0x80649918@l */
/* 8057207C  C0 27 00 00 */	lfs f1, 0(r7)
/* 80572080  C0 46 00 00 */	lfs f2, 0(r6)
/* 80572084  38 81 00 14 */	addi r4, r1, 0x14
/* 80572088  C0 65 00 00 */	lfs f3, 0(r5)
/* 8057208C  38 A1 00 08 */	addi r5, r1, 8
/* 80572090  38 C0 00 00 */	li r6, 0
/* 80572094  38 E0 00 05 */	li r7, 5
/* 80572098  4B E0 EE 99 */	bl Camera2_request_main_lock
/* 8057209C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805720A0  38 7F 00 24 */	addi r3, r31, 0x24
/* 805720A4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805720A8  3C 84 00 02 */	addis r4, r4, 2
/* 805720AC  88 04 0F 10 */	lbz r0, 0xf10(r4)
/* 805720B0  7C 63 00 AE */	lbzx r3, r3, r0
/* 805720B4  48 0B BF 3D */	bl sAdo_SetOutMode
/* 805720B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805720BC  38 7F 00 28 */	addi r3, r31, 0x28
/* 805720C0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805720C4  3C 84 00 02 */	addis r4, r4, 2
/* 805720C8  88 04 0F 11 */	lbz r0, 0xf11(r4)
/* 805720CC  7C 63 00 AE */	lbzx r3, r3, r0
/* 805720D0  48 0B BF 81 */	bl sAdo_SetVoiceMode
/* 805720D4  38 80 00 00 */	li r4, 0
/* 805720D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805720DC  98 9D 08 31 */	stb r4, 0x831(r29)
/* 805720E0  38 00 10 00 */	li r0, 0x1000
/* 805720E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805720E8  90 1D 08 40 */	stw r0, 0x840(r29)
/* 805720EC  3C 63 00 02 */	addis r3, r3, 2
/* 805720F0  B0 9D 09 78 */	sth r4, 0x978(r29)
/* 805720F4  98 9D 09 7D */	stb r4, 0x97d(r29)
/* 805720F8  98 9D 09 B0 */	stb r4, 0x9b0(r29)
/* 805720FC  98 9D 09 B1 */	stb r4, 0x9b1(r29)
/* 80572100  88 03 13 76 */	lbz r0, 0x1376(r3)
/* 80572104  98 1D 09 B2 */	stb r0, 0x9b2(r29)
/* 80572108  88 03 0F 1B */	lbz r0, 0xf1b(r3)
/* 8057210C  98 1D 09 B3 */	stb r0, 0x9b3(r29)
lbl_80572110:
/* 80572110  39 61 00 30 */	addi r11, r1, 0x30
/* 80572114  4B B2 8E 09 */	bl func_8009AF1C
/* 80572118  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057211C  7C 08 03 A6 */	mtlr r0
/* 80572120  38 21 00 30 */	addi r1, r1, 0x30
/* 80572124  4E 80 00 20 */	blr 
