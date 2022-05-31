lbl_80486FB0:
/* 80486FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80486FB4  7C 08 02 A6 */	mflr r0
/* 80486FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80486FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80486FC0  4B C1 3F 11 */	bl func_8009AED0
/* 80486FC4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80486FC8  7C 7D 1B 78 */	mr r29, r3
/* 80486FCC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80486FD0  7C 9C 23 78 */	mr r28, r4
/* 80486FD4  3F C3 00 02 */	addis r30, r3, 2
/* 80486FD8  3C A0 81 1D */	lis r5, data_811CEA58@ha /* 0x811CEA58@ha */
/* 80486FDC  80 1E 60 78 */	lwz r0, 0x6078(r30)
/* 80486FE0  3B E5 EA 58 */	addi r31, r5, data_811CEA58@l /* 0x811CEA58@l */
/* 80486FE4  28 00 00 00 */	cmplwi r0, 0
/* 80486FE8  40 82 00 10 */	bne lbl_80486FF8
/* 80486FEC  38 60 00 0C */	li r3, 0xc
/* 80486FF0  4B F3 54 6D */	bl zelda_malloc
/* 80486FF4  90 7E 60 78 */	stw r3, 0x6078(r30)
lbl_80486FF8:
/* 80486FF8  3C 80 80 48 */	lis r4, aQMgr_actor_talk_request@ha /* 0x804856A4@ha */
/* 80486FFC  80 7E 60 78 */	lwz r3, 0x6078(r30)
/* 80487000  38 04 56 A4 */	addi r0, r4, aQMgr_actor_talk_request@l /* 0x804856A4@l */
/* 80487004  3C 80 80 48 */	lis r4, aQMgr_actor_talk_start@ha /* 0x8048572C@ha */
/* 80487008  90 03 00 00 */	stw r0, 0(r3)
/* 8048700C  3C 60 80 48 */	lis r3, aQMgr_actor_talk_check@ha /* 0x80485844@ha */
/* 80487010  38 04 57 2C */	addi r0, r4, aQMgr_actor_talk_start@l /* 0x8048572C@l */
/* 80487014  38 E0 00 00 */	li r7, 0
/* 80487018  80 9E 60 78 */	lwz r4, 0x6078(r30)
/* 8048701C  39 23 58 44 */	addi r9, r3, aQMgr_actor_talk_check@l /* 0x80485844@l */
/* 80487020  38 DF 00 00 */	addi r6, r31, 0
/* 80487024  38 BF 00 08 */	addi r5, r31, 8
/* 80487028  90 04 00 04 */	stw r0, 4(r4)
/* 8048702C  38 9C 1D EC */	addi r4, r28, 0x1dec
/* 80487030  38 1F 00 04 */	addi r0, r31, 4
/* 80487034  7F A3 EB 78 */	mr r3, r29
/* 80487038  81 1E 60 78 */	lwz r8, 0x6078(r30)
/* 8048703C  91 28 00 08 */	stw r9, 8(r8)
/* 80487040  90 FF 00 00 */	stw r7, 0(r31)
/* 80487044  98 FF 00 04 */	stb r7, 4(r31)
/* 80487048  90 FF 00 08 */	stw r7, 8(r31)
/* 8048704C  90 FF 00 0C */	stw r7, 0xc(r31)
/* 80487050  90 FF 00 10 */	stw r7, 0x10(r31)
/* 80487054  90 DD 01 78 */	stw r6, 0x178(r29)
/* 80487058  90 BD 01 7C */	stw r5, 0x17c(r29)
/* 8048705C  90 9D 01 74 */	stw r4, 0x174(r29)
/* 80487060  90 1D 01 80 */	stw r0, 0x180(r29)
/* 80487064  98 FD 01 84 */	stb r7, 0x184(r29)
/* 80487068  98 FD 01 85 */	stb r7, 0x185(r29)
/* 8048706C  4B FF EC 19 */	bl aQMgr_talk_common_clear_talk_info
/* 80487070  38 7D 02 14 */	addi r3, r29, 0x214
/* 80487074  38 80 00 23 */	li r4, 0x23
/* 80487078  4B FF E9 3D */	bl aQMgr_actor_clear_regist
/* 8048707C  38 60 FF FF */	li r3, -1
/* 80487080  38 00 00 00 */	li r0, 0
/* 80487084  90 7D 09 30 */	stw r3, 0x930(r29)
/* 80487088  7F A3 EB 78 */	mr r3, r29
/* 8048708C  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80487090  4B FF EE D1 */	bl aQMgr_actor_init_quest
/* 80487094  3C 80 80 48 */	lis r4, aQMgr_talk_common_proc@ha /* 0x80486520@ha */
/* 80487098  3C 60 80 48 */	lis r3, aQMgr_actor_clear_regist@ha /* 0x804859B4@ha */
/* 8048709C  38 04 65 20 */	addi r0, r4, aQMgr_talk_common_proc@l /* 0x80486520@l */
/* 804870A0  3C 80 80 48 */	lis r4, aQMgr_actor_regist_quest@ha /* 0x80485AD4@ha */
/* 804870A4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 804870A8  38 03 59 B4 */	addi r0, r3, aQMgr_actor_clear_regist@l /* 0x804859B4@l */
/* 804870AC  3C 60 80 48 */	lis r3, aQMgr_get_time_kind@ha /* 0x804858C4@ha */
/* 804870B0  38 A4 5A D4 */	addi r5, r4, aQMgr_actor_regist_quest@l /* 0x80485AD4@l */
/* 804870B4  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 804870B8  38 03 58 C4 */	addi r0, r3, aQMgr_get_time_kind@l /* 0x804858C4@l */
/* 804870BC  38 7D 09 5C */	addi r3, r29, 0x95c
/* 804870C0  38 80 00 05 */	li r4, 5
/* 804870C4  90 BD 09 50 */	stw r5, 0x950(r29)
/* 804870C8  90 1D 09 54 */	stw r0, 0x954(r29)
/* 804870CC  4B BD 5F 9D */	bl bzero
/* 804870D0  38 00 00 00 */	li r0, 0
/* 804870D4  7F A3 EB 78 */	mr r3, r29
/* 804870D8  90 1D 09 40 */	stw r0, 0x940(r29)
/* 804870DC  4B FF E8 39 */	bl aQMgr_clear_talk_init_ovl
/* 804870E0  38 7D 01 B8 */	addi r3, r29, 0x1b8
/* 804870E4  4B FF F4 71 */	bl aQMgr_clear_talk_wait_info
/* 804870E8  38 00 00 00 */	li r0, 0
/* 804870EC  93 BF 00 0C */	stw r29, 0xc(r31)
/* 804870F0  38 7D 0A 90 */	addi r3, r29, 0xa90
/* 804870F4  38 80 00 07 */	li r4, 7
/* 804870F8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804870FC  38 A0 00 FF */	li r5, 0xff
/* 80487100  4B F3 39 49 */	bl mem_clear
/* 80487104  38 00 00 00 */	li r0, 0
/* 80487108  39 61 00 20 */	addi r11, r1, 0x20
/* 8048710C  B0 1D 0A 98 */	sth r0, 0xa98(r29)
/* 80487110  4B C1 3E 0D */	bl func_8009AF1C
/* 80487114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80487118  7C 08 03 A6 */	mtlr r0
/* 8048711C  38 21 00 20 */	addi r1, r1, 0x20
/* 80487120  4E 80 00 20 */	blr 
