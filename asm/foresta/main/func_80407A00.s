lbl_80407A00:
/* 80407A00  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80407A04  7C 08 02 A6 */	mflr r0
/* 80407A08  3C A0 80 66 */	lis r5, data_8065F010@ha /* 0x8065F010@ha */
/* 80407A0C  3C 80 80 66 */	lis r4, ScreenHeight@ha /* 0x8065F014@ha */
/* 80407A10  90 01 00 74 */	stw r0, 0x74(r1)
/* 80407A14  38 C0 01 40 */	li r6, 0x140
/* 80407A18  38 00 00 F0 */	li r0, 0xf0
/* 80407A1C  3C E0 81 1C */	lis r7, data_811C6DF8@ha /* 0x811C6DF8@ha */
/* 80407A20  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80407A24  3B E7 6D F8 */	addi r31, r7, data_811C6DF8@l /* 0x811C6DF8@l */
/* 80407A28  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80407A2C  7C 7E 1B 78 */	mr r30, r3
/* 80407A30  90 C5 F0 10 */	stw r6, data_8065F010@l(r5)  /* 0x8065F010@l */
/* 80407A34  90 04 F0 14 */	stw r0, ScreenHeight@l(r4)  /* 0x8065F014@l */
/* 80407A38  4B BF F0 25 */	bl JW_BeginFrame
/* 80407A3C  4B BF F0 CD */	bl JW_EndFrame
/* 80407A40  4B FF 00 B9 */	bl mCD_init_card
/* 80407A44  38 7F 00 00 */	addi r3, r31, 0
/* 80407A48  38 9F 00 20 */	addi r4, r31, 0x20
/* 80407A4C  38 A0 00 01 */	li r5, 1
/* 80407A50  4B C5 85 25 */	bl osCreateMesgQueue
/* 80407A54  38 61 00 14 */	addi r3, r1, 0x14
/* 80407A58  38 81 00 34 */	addi r4, r1, 0x34
/* 80407A5C  38 A0 00 0A */	li r5, 0xa
/* 80407A60  4B C5 85 15 */	bl osCreateMesgQueue
/* 80407A64  3C 60 81 1C */	lis r3, data_811C77A8@ha /* 0x811C77A8@ha */
/* 80407A68  38 80 10 00 */	li r4, 0x1000
/* 80407A6C  38 63 77 A8 */	addi r3, r3, data_811C77A8@l /* 0x811C77A8@l */
/* 80407A70  38 A0 00 12 */	li r5, 0x12
/* 80407A74  38 63 10 00 */	addi r3, r3, 0x1000
/* 80407A78  38 C0 00 01 */	li r6, 1
/* 80407A7C  4B FF E8 01 */	bl CreateIRQManager
/* 80407A80  38 61 00 0C */	addi r3, r1, 0xc
/* 80407A84  38 81 00 14 */	addi r4, r1, 0x14
/* 80407A88  4B FF E3 59 */	bl func_80405DE0
/* 80407A8C  3C 60 81 1D */	lis r3, padmgrStack@ha /* 0x811C87A8@ha */
/* 80407A90  38 80 00 EB */	li r4, 0xeb
/* 80407A94  38 63 87 A8 */	addi r3, r3, padmgrStack@l /* 0x811C87A8@l */
/* 80407A98  38 A0 10 00 */	li r5, 0x1000
/* 80407A9C  4B BF B9 0D */	bl func_800033A8
/* 80407AA0  3C 80 81 1D */	lis r4, padmgrStack@ha /* 0x811C87A8@ha */
/* 80407AA4  38 7F 00 00 */	addi r3, r31, 0
/* 80407AA8  38 A4 87 A8 */	addi r5, r4, padmgrStack@l /* 0x811C87A8@l */
/* 80407AAC  38 80 00 07 */	li r4, 7
/* 80407AB0  38 C5 10 00 */	addi r6, r5, 0x1000
/* 80407AB4  38 A0 00 0F */	li r5, 0xf
/* 80407AB8  38 E0 10 00 */	li r7, 0x1000
/* 80407ABC  48 00 0C E5 */	bl padmgr_Create
/* 80407AC0  3C 60 81 1D */	lis r3, graphStack@ha /* 0x811C97A8@ha */
/* 80407AC4  3C 80 80 40 */	lis r4, graph_proc@ha /* 0x80405CD4@ha */
/* 80407AC8  38 E3 97 A8 */	addi r7, r3, graphStack@l /* 0x811C97A8@l */
/* 80407ACC  7F C6 F3 78 */	mr r6, r30
/* 80407AD0  38 A4 5C D4 */	addi r5, r4, graph_proc@l /* 0x80405CD4@l */
/* 80407AD4  38 7F 00 28 */	addi r3, r31, 0x28
/* 80407AD8  38 80 00 04 */	li r4, 4
/* 80407ADC  38 E7 20 00 */	addi r7, r7, 0x2000
/* 80407AE0  39 00 20 00 */	li r8, 0x2000
/* 80407AE4  39 20 00 08 */	li r9, 8
/* 80407AE8  4B C5 84 AD */	bl func_8005FF94
/* 80407AEC  4B BF EF 71 */	bl JW_BeginFrame
/* 80407AF0  4B BF F0 19 */	bl JW_EndFrame
/* 80407AF4  38 7F 00 28 */	addi r3, r31, 0x28
/* 80407AF8  4B C5 89 E5 */	bl osStartThread
/* 80407AFC  38 60 00 00 */	li r3, 0
/* 80407B00  38 80 00 05 */	li r4, 5
/* 80407B04  4B C5 86 59 */	bl osSetThreadPri
/* 80407B08  4B BF F4 E1 */	bl JW_Init3
/* 80407B0C  4B FB 79 F5 */	bl mMsg_aram_init2
/* 80407B10  4B FA BC 89 */	bl func_803B3798
/* 80407B14  4B C3 C0 51 */	bl famicom_mount_archive
/* 80407B18  4B C5 9F 59 */	bl JC_JKRAram_getAramHeap
/* 80407B1C  4B C5 9F 35 */	bl JC_JKRAramHeap_dump
/* 80407B20  38 60 00 00 */	li r3, 0
/* 80407B24  38 80 00 0D */	li r4, 0xd
/* 80407B28  4B C5 86 35 */	bl osSetThreadPri
/* 80407B2C  3B E0 00 00 */	li r31, 0
lbl_80407B30:
/* 80407B30  93 E1 00 08 */	stw r31, 8(r1)
/* 80407B34  48 00 00 14 */	b lbl_80407B48
lbl_80407B38:
/* 80407B38  38 61 00 14 */	addi r3, r1, 0x14
/* 80407B3C  38 80 00 00 */	li r4, 0
/* 80407B40  38 A0 00 00 */	li r5, 0
/* 80407B44  4B C5 85 D9 */	bl osRecvMesg
lbl_80407B48:
/* 80407B48  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80407B4C  2C 00 00 00 */	cmpwi r0, 0
/* 80407B50  40 82 FF E8 */	bne lbl_80407B38
/* 80407B54  38 61 00 14 */	addi r3, r1, 0x14
/* 80407B58  38 81 00 08 */	addi r4, r1, 8
/* 80407B5C  38 A0 00 01 */	li r5, 1
/* 80407B60  4B C5 85 BD */	bl osRecvMesg
/* 80407B64  80 01 00 08 */	lwz r0, 8(r1)
/* 80407B68  28 00 00 00 */	cmplwi r0, 0
/* 80407B6C  40 82 FF C4 */	bne lbl_80407B30
/* 80407B70  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80407B74  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80407B78  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80407B7C  7C 08 03 A6 */	mtlr r0
/* 80407B80  38 21 00 70 */	addi r1, r1, 0x70
/* 80407B84  4E 80 00 20 */	blr 
