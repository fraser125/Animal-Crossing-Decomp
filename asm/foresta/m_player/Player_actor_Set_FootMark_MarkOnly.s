lbl_804DB134:
/* 804DB134  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804DB138  7C 08 02 A6 */	mflr r0
/* 804DB13C  90 01 00 74 */	stw r0, 0x74(r1)
/* 804DB140  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804DB144  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804DB148  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804DB14C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804DB150  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 804DB154  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 804DB158  39 61 00 40 */	addi r11, r1, 0x40
/* 804DB15C  4B BB FD 71 */	bl func_8009AECC
/* 804DB160  7C 7E 1B 78 */	mr r30, r3
/* 804DB164  7C 9F 23 78 */	mr r31, r4
/* 804DB168  C3 E3 01 84 */	lfs f31, 0x184(r3)
/* 804DB16C  7C BB 2B 78 */	mr r27, r5
/* 804DB170  C3 C3 01 80 */	lfs f30, 0x180(r3)
/* 804DB174  3B 80 00 00 */	li r28, 0
/* 804DB178  C3 A3 01 78 */	lfs f29, 0x178(r3)
/* 804DB17C  FC 20 F8 90 */	fmr f1, f31
/* 804DB180  83 A3 0D B4 */	lwz r29, 0xdb4(r3)
/* 804DB184  FC 40 F0 90 */	fmr f2, f30
/* 804DB188  FC 60 E8 90 */	fmr f3, f29
/* 804DB18C  7F A3 EB 78 */	mr r3, r29
/* 804DB190  4B FF FF 45 */	bl Player_actor_Check_RightFootMark_AnimeFrame_fromAnimeIndex
/* 804DB194  2C 03 00 00 */	cmpwi r3, 0
/* 804DB198  41 82 00 70 */	beq lbl_804DB208
/* 804DB19C  2C 1B 00 00 */	cmpwi r27, 0
/* 804DB1A0  40 82 00 64 */	bne lbl_804DB204
/* 804DB1A4  80 9E 10 E8 */	lwz r4, 0x10e8(r30)
/* 804DB1A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DB1AC  80 1E 10 EC */	lwz r0, 0x10ec(r30)
/* 804DB1B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DB1B4  3C 63 00 02 */	addis r3, r3, 2
/* 804DB1B8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804DB1BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804DB1C0  7F E7 FB 78 */	mr r7, r31
/* 804DB1C4  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804DB1C8  38 81 00 14 */	addi r4, r1, 0x14
/* 804DB1CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DB1D0  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804DB1D4  38 60 00 2C */	li r3, 0x2c
/* 804DB1D8  38 A0 00 02 */	li r5, 2
/* 804DB1DC  80 1E 10 F0 */	lwz r0, 0x10f0(r30)
/* 804DB1E0  39 40 00 00 */	li r10, 0
/* 804DB1E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DB1E8  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804DB1EC  81 86 00 00 */	lwz r12, 0(r6)
/* 804DB1F0  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804DB1F4  A8 DE 11 02 */	lha r6, 0x1102(r30)
/* 804DB1F8  7C 09 07 34 */	extsh r9, r0
/* 804DB1FC  7D 89 03 A6 */	mtctr r12
/* 804DB200  4E 80 04 21 */	bctrl 
lbl_804DB204:
/* 804DB204  3B 80 00 01 */	li r28, 1
lbl_804DB208:
/* 804DB208  FC 20 F8 90 */	fmr f1, f31
/* 804DB20C  7F A3 EB 78 */	mr r3, r29
/* 804DB210  FC 40 F0 90 */	fmr f2, f30
/* 804DB214  FC 60 E8 90 */	fmr f3, f29
/* 804DB218  4B FF FE ED */	bl Player_actor_Check_LeftFootMark_AnimeFrame_fromAnimeIndex
/* 804DB21C  2C 03 00 00 */	cmpwi r3, 0
/* 804DB220  41 82 00 70 */	beq lbl_804DB290
/* 804DB224  2C 1B 00 00 */	cmpwi r27, 0
/* 804DB228  40 82 00 64 */	bne lbl_804DB28C
/* 804DB22C  80 9E 10 F4 */	lwz r4, 0x10f4(r30)
/* 804DB230  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DB234  80 1E 10 F8 */	lwz r0, 0x10f8(r30)
/* 804DB238  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DB23C  3C 63 00 02 */	addis r3, r3, 2
/* 804DB240  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804DB244  90 81 00 08 */	stw r4, 8(r1)
/* 804DB248  7F E7 FB 78 */	mr r7, r31
/* 804DB24C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804DB250  38 81 00 08 */	addi r4, r1, 8
/* 804DB254  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DB258  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804DB25C  38 60 00 2C */	li r3, 0x2c
/* 804DB260  38 A0 00 02 */	li r5, 2
/* 804DB264  80 1E 10 FC */	lwz r0, 0x10fc(r30)
/* 804DB268  39 40 00 00 */	li r10, 0
/* 804DB26C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DB270  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804DB274  81 86 00 00 */	lwz r12, 0(r6)
/* 804DB278  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804DB27C  A8 DE 11 08 */	lha r6, 0x1108(r30)
/* 804DB280  7C 09 07 34 */	extsh r9, r0
/* 804DB284  7D 89 03 A6 */	mtctr r12
/* 804DB288  4E 80 04 21 */	bctrl 
lbl_804DB28C:
/* 804DB28C  3B 80 00 01 */	li r28, 1
lbl_804DB290:
/* 804DB290  7F 83 E3 78 */	mr r3, r28
/* 804DB294  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804DB298  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804DB29C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804DB2A0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804DB2A4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 804DB2A8  39 61 00 40 */	addi r11, r1, 0x40
/* 804DB2AC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 804DB2B0  4B BB FC 69 */	bl func_8009AF18
/* 804DB2B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804DB2B8  7C 08 03 A6 */	mtlr r0
/* 804DB2BC  38 21 00 70 */	addi r1, r1, 0x70
/* 804DB2C0  4E 80 00 20 */	blr 
