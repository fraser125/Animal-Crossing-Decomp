lbl_803C5160:
/* 803C5160  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C5164  7C 08 02 A6 */	mflr r0
/* 803C5168  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C516C  39 61 00 30 */	addi r11, r1, 0x30
/* 803C5170  4B CD 5D 5D */	bl func_8009AECC
/* 803C5174  7C 7B 1B 78 */	mr r27, r3
/* 803C5178  80 03 04 20 */	lwz r0, 0x420(r3)
/* 803C517C  38 7B 02 E8 */	addi r3, r27, 0x2e8
/* 803C5180  90 01 00 08 */	stw r0, 8(r1)
/* 803C5184  4B FB E4 F1 */	bl mChoice_check_main_index
/* 803C5188  7C 60 00 34 */	cntlzw r0, r3
/* 803C518C  3B C0 00 01 */	li r30, 1
/* 803C5190  54 1F D9 7E */	srwi r31, r0, 5
/* 803C5194  3B A0 00 00 */	li r29, 0
/* 803C5198  3B 80 00 00 */	li r28, 0
/* 803C519C  38 60 40 00 */	li r3, 0x4000
/* 803C51A0  4B FD 0D 71 */	bl chkTrigger
/* 803C51A4  2C 03 00 00 */	cmpwi r3, 0
/* 803C51A8  41 82 00 18 */	beq lbl_803C51C0
/* 803C51AC  80 7B 04 0C */	lwz r3, 0x40c(r27)
/* 803C51B0  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 803C51B4  40 82 00 0C */	bne lbl_803C51C0
/* 803C51B8  60 60 01 00 */	ori r0, r3, 0x100
/* 803C51BC  90 1B 04 0C */	stw r0, 0x40c(r27)
lbl_803C51C0:
/* 803C51C0  7F 63 DB 78 */	mr r3, r27
/* 803C51C4  4B FF DC 35 */	bl func_803C2DF8
/* 803C51C8  2C 03 00 00 */	cmpwi r3, 0
/* 803C51CC  41 82 00 0C */	beq lbl_803C51D8
/* 803C51D0  38 00 00 01 */	li r0, 1
/* 803C51D4  90 1B 04 3C */	stw r0, 0x43c(r27)
lbl_803C51D8:
/* 803C51D8  80 1B 04 3C */	lwz r0, 0x43c(r27)
/* 803C51DC  2C 00 00 00 */	cmpwi r0, 0
/* 803C51E0  41 82 00 20 */	beq lbl_803C5200
/* 803C51E4  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C51E8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 803C51EC  40 82 00 14 */	bne lbl_803C5200
/* 803C51F0  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C51F4  C0 03 26 18 */	lfs f0, lit_725@l(r3)  /* 0x80642618@l */
/* 803C51F8  D0 1B 04 14 */	stfs f0, 0x414(r27)
/* 803C51FC  48 00 00 58 */	b lbl_803C5254
lbl_803C5200:
/* 803C5200  80 7B 04 0C */	lwz r3, 0x40c(r27)
/* 803C5204  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 803C5208  41 82 00 1C */	beq lbl_803C5224
/* 803C520C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 803C5210  40 82 00 14 */	bne lbl_803C5224
/* 803C5214  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C5218  C0 03 26 18 */	lfs f0, lit_725@l(r3)  /* 0x80642618@l */
/* 803C521C  D0 1B 04 14 */	stfs f0, 0x414(r27)
/* 803C5220  48 00 00 34 */	b lbl_803C5254
lbl_803C5224:
/* 803C5224  3C 80 80 64 */	lis r4, lit_947@ha /* 0x80642630@ha */
/* 803C5228  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C522C  C0 5B 04 14 */	lfs f2, 0x414(r27)
/* 803C5230  C0 24 26 30 */	lfs f1, lit_947@l(r4)  /* 0x80642630@l */
/* 803C5234  C0 03 26 18 */	lfs f0, lit_725@l(r3)  /* 0x80642618@l */
/* 803C5238  EC 22 08 28 */	fsubs f1, f2, f1
/* 803C523C  D0 3B 04 14 */	stfs f1, 0x414(r27)
/* 803C5240  C0 3B 04 14 */	lfs f1, 0x414(r27)
/* 803C5244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C5248  4C 40 13 82 */	cror 2, 0, 2
/* 803C524C  40 82 00 08 */	bne lbl_803C5254
/* 803C5250  D0 1B 04 14 */	stfs f0, 0x414(r27)
lbl_803C5254:
/* 803C5254  2C 1F 00 00 */	cmpwi r31, 0
/* 803C5258  41 82 00 1C */	beq lbl_803C5274
/* 803C525C  88 7B 03 F7 */	lbz r3, 0x3f7(r27)
/* 803C5260  7C 60 07 75 */	extsb. r0, r3
/* 803C5264  40 81 00 18 */	ble lbl_803C527C
/* 803C5268  38 03 FF FF */	addi r0, r3, -1
/* 803C526C  98 1B 03 F7 */	stb r0, 0x3f7(r27)
/* 803C5270  48 00 00 0C */	b lbl_803C527C
lbl_803C5274:
/* 803C5274  38 00 00 03 */	li r0, 3
/* 803C5278  98 1B 03 F7 */	stb r0, 0x3f7(r27)
lbl_803C527C:
/* 803C527C  7F 63 DB 78 */	mr r3, r27
/* 803C5280  4B FF B7 91 */	bl mMsg_Unset_NowUtter
/* 803C5284  38 00 00 00 */	li r0, 0
/* 803C5288  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C528C  98 1B 03 F8 */	stb r0, 0x3f8(r27)
/* 803C5290  C0 03 26 18 */	lfs f0, lit_725@l(r3)  /* 0x80642618@l */
/* 803C5294  C0 3B 04 14 */	lfs f1, 0x414(r27)
/* 803C5298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C529C  4C 40 13 82 */	cror 2, 0, 2
/* 803C52A0  40 82 01 80 */	bne lbl_803C5420
/* 803C52A4  2C 1F 00 00 */	cmpwi r31, 0
/* 803C52A8  41 82 01 78 */	beq lbl_803C5420
lbl_803C52AC:
/* 803C52AC  80 81 00 08 */	lwz r4, 8(r1)
/* 803C52B0  7F 63 DB 78 */	mr r3, r27
/* 803C52B4  80 BB 00 0C */	lwz r5, 0xc(r27)
/* 803C52B8  38 04 00 20 */	addi r0, r4, 0x20
/* 803C52BC  7F E5 00 AE */	lbzx r31, r5, r0
/* 803C52C0  4B FF DB 39 */	bl func_803C2DF8
/* 803C52C4  2C 03 00 00 */	cmpwi r3, 0
/* 803C52C8  41 82 00 10 */	beq lbl_803C52D8
/* 803C52CC  38 00 00 01 */	li r0, 1
/* 803C52D0  90 1B 04 3C */	stw r0, 0x43c(r27)
/* 803C52D4  4B FF FF D8 */	b lbl_803C52AC
lbl_803C52D8:
/* 803C52D8  28 1F 00 CD */	cmplwi r31, 0xcd
/* 803C52DC  40 82 00 2C */	bne lbl_803C5308
/* 803C52E0  80 81 00 08 */	lwz r4, 8(r1)
/* 803C52E4  7F 63 DB 78 */	mr r3, r27
/* 803C52E8  4B FF AD 61 */	bl func_803C0048
/* 803C52EC  80 01 00 08 */	lwz r0, 8(r1)
/* 803C52F0  7C 00 1A 14 */	add r0, r0, r3
/* 803C52F4  90 01 00 08 */	stw r0, 8(r1)
/* 803C52F8  80 7B 02 E4 */	lwz r3, 0x2e4(r27)
/* 803C52FC  38 03 00 01 */	addi r0, r3, 1
/* 803C5300  90 1B 02 E4 */	stw r0, 0x2e4(r27)
/* 803C5304  4B FF FF A8 */	b lbl_803C52AC
lbl_803C5308:
/* 803C5308  28 1F 00 80 */	cmplwi r31, 0x80
/* 803C530C  40 82 00 20 */	bne lbl_803C532C
/* 803C5310  80 81 00 08 */	lwz r4, 8(r1)
/* 803C5314  7F 63 DB 78 */	mr r3, r27
/* 803C5318  4B FF AD 31 */	bl func_803C0048
/* 803C531C  80 01 00 08 */	lwz r0, 8(r1)
/* 803C5320  7C 00 1A 14 */	add r0, r0, r3
/* 803C5324  90 01 00 08 */	stw r0, 8(r1)
/* 803C5328  4B FF FF 84 */	b lbl_803C52AC
lbl_803C532C:
/* 803C532C  80 81 00 08 */	lwz r4, 8(r1)
/* 803C5330  7F 63 DB 78 */	mr r3, r27
/* 803C5334  4B FF DB 35 */	bl mMsg_Main_Cursol_Check_ControlCursol
/* 803C5338  2C 03 00 00 */	cmpwi r3, 0
/* 803C533C  41 82 00 54 */	beq lbl_803C5390
/* 803C5340  7F 63 DB 78 */	mr r3, r27
/* 803C5344  38 81 00 08 */	addi r4, r1, 8
/* 803C5348  4B FF FD 9D */	bl mMsg_Main_Cursol_Proc_ControlCursol
/* 803C534C  2C 03 00 01 */	cmpwi r3, 1
/* 803C5350  40 82 00 2C */	bne lbl_803C537C
/* 803C5354  88 1B 03 F7 */	lbz r0, 0x3f7(r27)
/* 803C5358  7C 00 07 75 */	extsb. r0, r0
/* 803C535C  40 82 00 18 */	bne lbl_803C5374
/* 803C5360  88 1B 04 03 */	lbz r0, 0x403(r27)
/* 803C5364  28 00 00 01 */	cmplwi r0, 1
/* 803C5368  40 82 00 0C */	bne lbl_803C5374
/* 803C536C  7F 63 DB 78 */	mr r3, r27
/* 803C5370  4B FF CC 9D */	bl mMsg_sound_voice_endcode_set
lbl_803C5374:
/* 803C5374  3B C0 00 00 */	li r30, 0
/* 803C5378  48 00 00 A8 */	b lbl_803C5420
lbl_803C537C:
/* 803C537C  2C 03 00 02 */	cmpwi r3, 2
/* 803C5380  40 82 FF 2C */	bne lbl_803C52AC
/* 803C5384  38 00 00 01 */	li r0, 1
/* 803C5388  98 1B 03 F8 */	stb r0, 0x3f8(r27)
/* 803C538C  48 00 00 94 */	b lbl_803C5420
lbl_803C5390:
/* 803C5390  80 7B 04 0C */	lwz r3, 0x40c(r27)
/* 803C5394  83 E1 00 08 */	lwz r31, 8(r1)
/* 803C5398  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 803C539C  41 82 00 24 */	beq lbl_803C53C0
/* 803C53A0  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 803C53A4  40 82 00 1C */	bne lbl_803C53C0
/* 803C53A8  38 60 00 01 */	li r3, 1
/* 803C53AC  4B FF CE E1 */	bl mMsg_sound_MessageSpeedClear
/* 803C53B0  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C53B4  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 803C53B8  90 1B 04 0C */	stw r0, 0x40c(r27)
/* 803C53BC  48 00 00 0C */	b lbl_803C53C8
lbl_803C53C0:
/* 803C53C0  38 60 00 02 */	li r3, 2
/* 803C53C4  4B FF CE C9 */	bl mMsg_sound_MessageSpeedClear
lbl_803C53C8:
/* 803C53C8  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C53CC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 803C53D0  40 82 00 1C */	bne lbl_803C53EC
/* 803C53D4  80 81 00 08 */	lwz r4, 8(r1)
/* 803C53D8  7F 63 DB 78 */	mr r3, r27
/* 803C53DC  4B FF AC 6D */	bl func_803C0048
/* 803C53E0  80 01 00 08 */	lwz r0, 8(r1)
/* 803C53E4  7C 00 1A 14 */	add r0, r0, r3
/* 803C53E8  90 01 00 08 */	stw r0, 8(r1)
lbl_803C53EC:
/* 803C53EC  80 01 00 08 */	lwz r0, 8(r1)
/* 803C53F0  3B 80 00 01 */	li r28, 1
/* 803C53F4  90 1B 04 20 */	stw r0, 0x420(r27)
/* 803C53F8  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C53FC  68 00 02 00 */	xori r0, r0, 0x200
/* 803C5400  90 1B 04 0C */	stw r0, 0x40c(r27)
/* 803C5404  80 1B 04 3C */	lwz r0, 0x43c(r27)
/* 803C5408  2C 00 00 00 */	cmpwi r0, 0
/* 803C540C  40 82 FE A0 */	bne lbl_803C52AC
/* 803C5410  7F 63 DB 78 */	mr r3, r27
/* 803C5414  7F E4 FB 78 */	mr r4, r31
/* 803C5418  4B FF CC 5D */	bl mMsg_sound_CodeVoice
/* 803C541C  7C 7D 1B 78 */	mr r29, r3
lbl_803C5420:
/* 803C5420  2C 1C 00 00 */	cmpwi r28, 0
/* 803C5424  40 82 00 10 */	bne lbl_803C5434
/* 803C5428  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C542C  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 803C5430  90 1B 04 0C */	stw r0, 0x40c(r27)
lbl_803C5434:
/* 803C5434  2C 1D 00 00 */	cmpwi r29, 0
/* 803C5438  41 82 00 14 */	beq lbl_803C544C
/* 803C543C  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C5440  60 00 04 00 */	ori r0, r0, 0x400
/* 803C5444  90 1B 04 0C */	stw r0, 0x40c(r27)
/* 803C5448  48 00 00 10 */	b lbl_803C5458
lbl_803C544C:
/* 803C544C  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C5450  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 803C5454  90 1B 04 0C */	stw r0, 0x40c(r27)
lbl_803C5458:
/* 803C5458  2C 1D 00 00 */	cmpwi r29, 0
/* 803C545C  40 82 00 10 */	bne lbl_803C546C
/* 803C5460  80 1B 04 0C */	lwz r0, 0x40c(r27)
/* 803C5464  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 803C5468  41 82 00 0C */	beq lbl_803C5474
lbl_803C546C:
/* 803C546C  7F 63 DB 78 */	mr r3, r27
/* 803C5470  4B FF B5 AD */	bl mMsg_Set_NowUtter
lbl_803C5474:
/* 803C5474  7F C3 F3 78 */	mr r3, r30
/* 803C5478  39 61 00 30 */	addi r11, r1, 0x30
/* 803C547C  4B CD 5A 9D */	bl func_8009AF18
/* 803C5480  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C5484  7C 08 03 A6 */	mtlr r0
/* 803C5488  38 21 00 30 */	addi r1, r1, 0x30
/* 803C548C  4E 80 00 20 */	blr 
