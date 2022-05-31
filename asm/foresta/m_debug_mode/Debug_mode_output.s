lbl_80398084:
/* 80398084  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80398088  7C 08 02 A6 */	mflr r0
/* 8039808C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80398090  39 61 00 50 */	addi r11, r1, 0x50
/* 80398094  4B D0 2E 39 */	bl func_8009AECC
/* 80398098  3C 80 81 16 */	lis r4, data_81166148@ha /* 0x81166148@ha */
/* 8039809C  7C 7C 1B 78 */	mr r28, r3
/* 803980A0  3B E4 61 48 */	addi r31, r4, data_81166148@l /* 0x81166148@l */
/* 803980A4  3B A1 00 08 */	addi r29, r1, 8
/* 803980A8  4B FF EE C1 */	bl debug_hayakawa_draw
/* 803980AC  38 7C 02 C8 */	addi r3, r28, 0x2c8
/* 803980B0  48 06 C9 89 */	bl THA_GA_getFreeBytes
/* 803980B4  80 9F 0D F8 */	lwz r4, 0xdf8(r31)
/* 803980B8  38 04 10 00 */	addi r0, r4, 0x1000
/* 803980BC  7C 03 00 00 */	cmpw r3, r0
/* 803980C0  41 80 02 F4 */	blt lbl_803983B4
/* 803980C4  7F A3 EB 78 */	mr r3, r29
/* 803980C8  4B CC 37 1D */	bl gfxprint_init
/* 803980CC  83 DC 02 D0 */	lwz r30, 0x2d0(r28)
/* 803980D0  7F C3 F3 78 */	mr r3, r30
/* 803980D4  48 06 D2 F5 */	bl func_804053C8
/* 803980D8  80 DC 02 C0 */	lwz r6, 0x2c0(r28)
/* 803980DC  7C 64 1B 78 */	mr r4, r3
/* 803980E0  3C 00 DE 00 */	lis r0, 0xde00
/* 803980E4  7F A3 EB 78 */	mr r3, r29
/* 803980E8  38 A6 00 08 */	addi r5, r6, 8
/* 803980EC  90 BC 02 C0 */	stw r5, 0x2c0(r28)
/* 803980F0  90 06 00 00 */	stw r0, 0(r6)
/* 803980F4  90 86 00 04 */	stw r4, 4(r6)
/* 803980F8  4B CC 37 81 */	bl gfxprint_open
/* 803980FC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80398100  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80398104  41 82 00 0C */	beq lbl_80398110
/* 80398108  7F A3 EB 78 */	mr r3, r29
/* 8039810C  4B FF F2 99 */	bl Debug_Print2_output
lbl_80398110:
/* 80398110  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80398114  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80398118  80 63 00 00 */	lwz r3, 0(r3)
/* 8039811C  88 03 00 00 */	lbz r0, 0(r3)
/* 80398120  28 00 00 00 */	cmplwi r0, 0
/* 80398124  41 82 00 0C */	beq lbl_80398130
/* 80398128  7F A3 EB 78 */	mr r3, r29
/* 8039812C  4B FF FC 0D */	bl Debug_mode_output_sub
lbl_80398130:
/* 80398130  80 1F 00 00 */	lwz r0, 0(r31)
/* 80398134  38 60 00 00 */	li r3, 0
/* 80398138  B0 7F 00 04 */	sth r3, 4(r31)
/* 8039813C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80398140  41 82 00 0C */	beq lbl_8039814C
/* 80398144  7F A3 EB 78 */	mr r3, r29
/* 80398148  4B FF F1 B9 */	bl func_80397300
lbl_8039814C:
/* 8039814C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80398150  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80398154  80 63 00 00 */	lwz r3, 0(r3)
/* 80398158  88 03 00 00 */	lbz r0, 0(r3)
/* 8039815C  28 00 00 00 */	cmplwi r0, 0
/* 80398160  40 82 02 14 */	bne lbl_80398374
/* 80398164  80 1F 0D D4 */	lwz r0, 0xdd4(r31)
/* 80398168  3C 60 81 16 */	lis r3, fuusen_DEBUG_mode_flag@ha /* 0x81167DA8@ha */
/* 8039816C  38 80 00 01 */	li r4, 1
/* 80398170  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80398174  90 83 7D A8 */	stw r4, fuusen_DEBUG_mode_flag@l(r3)  /* 0x81167DA8@l */
/* 80398178  41 82 00 64 */	beq lbl_803981DC
/* 8039817C  7F A3 EB 78 */	mr r3, r29
/* 80398180  48 01 2C DD */	bl mFI_PrintNowBGNum
/* 80398184  7F A3 EB 78 */	mr r3, r29
/* 80398188  48 01 2D 41 */	bl mFI_PrintFgAttr
/* 8039818C  7F A3 EB 78 */	mr r3, r29
/* 80398190  38 80 00 C8 */	li r4, 0xc8
/* 80398194  38 A0 00 C8 */	li r5, 0xc8
/* 80398198  38 C0 00 FA */	li r6, 0xfa
/* 8039819C  38 E0 00 FF */	li r7, 0xff
/* 803981A0  4B CC 30 01 */	bl gfxprint_color
/* 803981A4  7F A3 EB 78 */	mr r3, r29
/* 803981A8  38 80 00 03 */	li r4, 3
/* 803981AC  38 A0 00 09 */	li r5, 9
/* 803981B0  4B CC 30 61 */	bl gfxprint_locate8x8
/* 803981B4  48 04 8E 51 */	bl mPr_GetGoodsPower
/* 803981B8  7C 7B 07 34 */	extsh r27, r3
/* 803981BC  48 04 8D ED */	bl mPr_GetMoneyPower
/* 803981C0  3C 80 80 65 */	lis r4, lit_825@ha /* 0x8065167C@ha */
/* 803981C4  7C 65 07 34 */	extsh r5, r3
/* 803981C8  38 84 16 7C */	addi r4, r4, lit_825@l /* 0x8065167C@l */
/* 803981CC  7F A3 EB 78 */	mr r3, r29
/* 803981D0  7F 66 DB 78 */	mr r6, r27
/* 803981D4  4C C6 31 82 */	crclr 6
/* 803981D8  4B CC 37 45 */	bl gfxprint_printf
lbl_803981DC:
/* 803981DC  80 1F 0D DC */	lwz r0, 0xddc(r31)
/* 803981E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803981E4  41 82 00 0C */	beq lbl_803981F0
/* 803981E8  7F A3 EB 78 */	mr r3, r29
/* 803981EC  48 04 C6 11 */	bl mQst_PrintQuestInfo
lbl_803981F0:
/* 803981F0  80 1F 0D E4 */	lwz r0, 0xde4(r31)
/* 803981F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803981F8  41 82 00 0C */	beq lbl_80398204
/* 803981FC  7F A3 EB 78 */	mr r3, r29
/* 80398200  48 00 67 31 */	bl mEv_debug_print4f
lbl_80398204:
/* 80398204  80 1F 0D E4 */	lwz r0, 0xde4(r31)
/* 80398208  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8039820C  41 82 00 0C */	beq lbl_80398218
/* 80398210  7F A3 EB 78 */	mr r3, r29
/* 80398214  48 00 68 85 */	bl mEv_sp_debug_print4f
lbl_80398218:
/* 80398218  80 1F 0D D0 */	lwz r0, 0xdd0(r31)
/* 8039821C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80398220  41 82 00 0C */	beq lbl_8039822C
/* 80398224  7F A3 EB 78 */	mr r3, r29
/* 80398228  48 02 73 85 */	bl mMsg_debug_draw
lbl_8039822C:
/* 8039822C  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80398230  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 80398234  2C 00 00 02 */	cmpwi r0, 2
/* 80398238  41 80 00 10 */	blt lbl_80398248
/* 8039823C  48 05 3B 69 */	bl mItemDebug_ItemDebugMain
/* 80398240  7F A3 EB 78 */	mr r3, r29
/* 80398244  48 05 3D F9 */	bl mItemDebug_ItemDebugDraw
lbl_80398248:
/* 80398248  80 1F 0D E0 */	lwz r0, 0xde0(r31)
/* 8039824C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80398250  41 82 00 14 */	beq lbl_80398264
/* 80398254  7F A3 EB 78 */	mr r3, r29
/* 80398258  48 05 18 A1 */	bl mSP_PrintNowShopSalesSum
/* 8039825C  7F A3 EB 78 */	mr r3, r29
/* 80398260  4B FF FD 41 */	bl DebugHaniwaTempo
lbl_80398264:
/* 80398264  80 1F 0D E8 */	lwz r0, 0xde8(r31)
/* 80398268  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8039826C  41 82 00 0C */	beq lbl_80398278
/* 80398270  7F A3 EB 78 */	mr r3, r29
/* 80398274  4B FF FC 35 */	bl Debug_mode_zelda_malloc_info_output
lbl_80398278:
/* 80398278  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8039827C  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 80398280  2C 00 00 02 */	cmpwi r0, 2
/* 80398284  41 80 00 1C */	blt lbl_803982A0
/* 80398288  80 1F 0D EC */	lwz r0, 0xdec(r31)
/* 8039828C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80398290  41 82 00 10 */	beq lbl_803982A0
/* 80398294  7F A3 EB 78 */	mr r3, r29
/* 80398298  48 04 E5 6D */	bl mRmTp_DrawFamicomInfo
/* 8039829C  48 04 E6 39 */	bl mRmTp_MakeFamicom_Fdebug
lbl_803982A0:
/* 803982A0  3C 60 80 20 */	lis r3, osAppNMIBuffer@ha /* 0x80206F60@ha */
/* 803982A4  38 A0 00 FA */	li r5, 0xfa
/* 803982A8  38 63 6F 60 */	addi r3, r3, osAppNMIBuffer@l /* 0x80206F60@l */
/* 803982AC  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 803982B0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803982B4  41 82 00 08 */	beq lbl_803982BC
/* 803982B8  38 A0 00 7D */	li r5, 0x7d
lbl_803982BC:
/* 803982BC  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803982C0  38 83 B7 A8 */	addi r4, r3, data_811CB7A8@l /* 0x811CB7A8@l */
/* 803982C4  80 04 00 00 */	lwz r0, 0(r4)
/* 803982C8  7F A3 EB 78 */	mr r3, r29
/* 803982CC  38 80 00 FA */	li r4, 0xfa
/* 803982D0  2C 00 00 02 */	cmpwi r0, 2
/* 803982D4  41 80 00 08 */	blt lbl_803982DC
/* 803982D8  38 80 00 7D */	li r4, 0x7d
lbl_803982DC:
/* 803982DC  38 C0 00 8C */	li r6, 0x8c
/* 803982E0  38 E0 00 FF */	li r7, 0xff
/* 803982E4  4B CC 2E BD */	bl gfxprint_color
/* 803982E8  7F A3 EB 78 */	mr r3, r29
/* 803982EC  38 80 00 24 */	li r4, 0x24
/* 803982F0  38 A0 00 03 */	li r5, 3
/* 803982F4  4B CC 2F 1D */	bl gfxprint_locate8x8
/* 803982F8  3C 80 80 65 */	lis r4, lit_826@ha /* 0x80651684@ha */
/* 803982FC  7F A3 EB 78 */	mr r3, r29
/* 80398300  38 84 16 84 */	addi r4, r4, lit_826@l /* 0x80651684@l */
/* 80398304  4C C6 31 82 */	crclr 6
/* 80398308  4B CC 36 15 */	bl gfxprint_printf
/* 8039830C  80 1F 0D F0 */	lwz r0, 0xdf0(r31)
/* 80398310  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80398314  41 82 00 0C */	beq lbl_80398320
/* 80398318  7F A3 EB 78 */	mr r3, r29
/* 8039831C  48 03 EC 8D */	bl mNpc_PrintRemoveInfo
lbl_80398320:
/* 80398320  80 1F 0D F4 */	lwz r0, 0xdf4(r31)
/* 80398324  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80398328  41 82 00 34 */	beq lbl_8039835C
/* 8039832C  7F A3 EB 78 */	mr r3, r29
/* 80398330  48 00 9D D1 */	bl mFAs_PrintFieldAssessment
/* 80398334  7F A3 EB 78 */	mr r3, r29
/* 80398338  4B FD B5 59 */	bl mAGrw_PrintFossilHaniwa_debug
/* 8039833C  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80398340  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 80398344  2C 00 00 02 */	cmpwi r0, 2
/* 80398348  41 80 00 0C */	blt lbl_80398354
/* 8039834C  7F A3 EB 78 */	mr r3, r29
/* 80398350  48 03 F0 FD */	bl mNpc_PrintFriendship_fdebug
lbl_80398354:
/* 80398354  7F A3 EB 78 */	mr r3, r29
/* 80398358  48 04 A4 29 */	bl mPr_PrintMapInfo_debug
lbl_8039835C:
/* 8039835C  7F A3 EB 78 */	mr r3, r29
/* 80398360  48 01 43 6D */	bl mFRm_PrintSavedDebug
/* 80398364  7F A3 EB 78 */	mr r3, r29
/* 80398368  48 05 F3 35 */	bl mCD_PrintErrInfo
/* 8039836C  7F A3 EB 78 */	mr r3, r29
/* 80398370  48 01 45 85 */	bl mFRm_display_errInfo
lbl_80398374:
/* 80398374  7F A3 EB 78 */	mr r3, r29
/* 80398378  4B CC 35 4D */	bl gfxprint_close
/* 8039837C  7C 64 1B 78 */	mr r4, r3
/* 80398380  3C 00 DF 00 */	lis r0, 0xdf00
/* 80398384  90 03 00 00 */	stw r0, 0(r3)
/* 80398388  3B 64 00 08 */	addi r27, r4, 8
/* 8039838C  38 00 00 00 */	li r0, 0
/* 80398390  7F C3 F3 78 */	mr r3, r30
/* 80398394  90 04 00 04 */	stw r0, 4(r4)
/* 80398398  7C 1E D8 50 */	subf r0, r30, r27
/* 8039839C  7F 64 DB 78 */	mr r4, r27
/* 803983A0  90 1F 0D F8 */	stw r0, 0xdf8(r31)
/* 803983A4  48 06 D0 2D */	bl gfxclose
/* 803983A8  93 7C 02 D0 */	stw r27, 0x2d0(r28)
/* 803983AC  7F A3 EB 78 */	mr r3, r29
/* 803983B0  4B CC 34 C5 */	bl gfxprint_cleanup
lbl_803983B4:
/* 803983B4  39 61 00 50 */	addi r11, r1, 0x50
/* 803983B8  4B D0 2B 61 */	bl func_8009AF18
/* 803983BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803983C0  7C 08 03 A6 */	mtlr r0
/* 803983C4  38 21 00 50 */	addi r1, r1, 0x50
/* 803983C8  4E 80 00 20 */	blr 
