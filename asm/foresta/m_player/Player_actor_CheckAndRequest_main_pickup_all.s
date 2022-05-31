lbl_804DDDA0:
/* 804DDDA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804DDDA4  7C 08 02 A6 */	mflr r0
/* 804DDDA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 804DDDAC  39 61 00 60 */	addi r11, r1, 0x60
/* 804DDDB0  4B BB D1 1D */	bl func_8009AECC
/* 804DDDB4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804DDDB8  7C 7E 1B 78 */	mr r30, r3
/* 804DDDBC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804DDDC0  3C 63 00 02 */	addis r3, r3, 2
/* 804DDDC4  8B A3 60 01 */	lbz r29, 0x6001(r3)
/* 804DDDC8  2C 1D 00 00 */	cmpwi r29, 0
/* 804DDDCC  41 82 00 0C */	beq lbl_804DDDD8
/* 804DDDD0  2C 1D 00 01 */	cmpwi r29, 1
/* 804DDDD4  40 82 04 0C */	bne lbl_804DE1E0
lbl_804DDDD8:
/* 804DDDD8  7F C3 F3 78 */	mr r3, r30
/* 804DDDDC  4B FF 67 09 */	bl func_804D44E4
/* 804DDDE0  2C 03 00 00 */	cmpwi r3, 0
/* 804DDDE4  41 82 03 FC */	beq lbl_804DE1E0
/* 804DDDE8  7F C3 F3 78 */	mr r3, r30
/* 804DDDEC  38 80 00 08 */	li r4, 8
/* 804DDDF0  4B FF 71 F1 */	bl func_804D4FE0
/* 804DDDF4  2C 03 00 00 */	cmpwi r3, 0
/* 804DDDF8  40 81 03 E8 */	ble lbl_804DE1E0
/* 804DDDFC  38 60 00 1E */	li r3, 0x1e
/* 804DDE00  4B FF C5 31 */	bl Player_actor_check_cancel_request_change_proc_index
/* 804DDE04  2C 03 00 00 */	cmpwi r3, 0
/* 804DDE08  40 82 03 D8 */	bne lbl_804DE1E0
/* 804DDE0C  7F A0 00 34 */	cntlzw r0, r29
/* 804DDE10  54 1F D9 7E */	srwi r31, r0, 5
/* 804DDE14  4B EB D0 A5 */	bl mEv_CheckTitleDemo
/* 804DDE18  2C 03 00 00 */	cmpwi r3, 0
/* 804DDE1C  41 81 02 9C */	bgt lbl_804DE0B8
/* 804DDE20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DDE24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DDE28  3F A3 00 02 */	addis r29, r3, 2
/* 804DDE2C  80 7D 60 8C */	lwz r3, 0x608c(r29)
/* 804DDE30  28 03 00 00 */	cmplwi r3, 0
/* 804DDE34  41 82 01 D8 */	beq lbl_804DE00C
/* 804DDE38  81 83 00 08 */	lwz r12, 8(r3)
/* 804DDE3C  7F C3 F3 78 */	mr r3, r30
/* 804DDE40  7D 89 03 A6 */	mtctr r12
/* 804DDE44  4E 80 04 21 */	bctrl 
/* 804DDE48  B0 61 00 0A */	sth r3, 0xa(r1)
/* 804DDE4C  38 61 00 0A */	addi r3, r1, 0xa
/* 804DDE50  4B EF DC FD */	bl mPlib_Get_space_putin_item_forTICKET
/* 804DDE54  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 804DDE58  7C 7C 1B 78 */	mr r28, r3
/* 804DDE5C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 804DDE60  2C 00 00 02 */	cmpwi r0, 2
/* 804DDE64  40 82 00 88 */	bne lbl_804DDEEC
/* 804DDE68  80 9D 60 8C */	lwz r4, 0x608c(r29)
/* 804DDE6C  38 61 00 3C */	addi r3, r1, 0x3c
/* 804DDE70  81 84 00 48 */	lwz r12, 0x48(r4)
/* 804DDE74  7D 89 03 A6 */	mtctr r12
/* 804DDE78  4E 80 04 21 */	bctrl 
/* 804DDE7C  2C 1C 00 00 */	cmpwi r28, 0
/* 804DDE80  40 80 00 30 */	bge lbl_804DDEB0
/* 804DDE84  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 804DDE88  28 00 1B A8 */	cmplwi r0, 0x1ba8
/* 804DDE8C  41 80 00 0C */	blt lbl_804DDE98
/* 804DDE90  28 00 1B C7 */	cmplwi r0, 0x1bc7
/* 804DDE94  40 81 00 1C */	ble lbl_804DDEB0
lbl_804DDE98:
/* 804DDE98  28 00 1D 88 */	cmplwi r0, 0x1d88
/* 804DDE9C  41 80 00 0C */	blt lbl_804DDEA8
/* 804DDEA0  28 00 1D A7 */	cmplwi r0, 0x1da7
/* 804DDEA4  40 81 00 0C */	ble lbl_804DDEB0
lbl_804DDEA8:
/* 804DDEA8  2C 1F 00 00 */	cmpwi r31, 0
/* 804DDEAC  41 82 00 30 */	beq lbl_804DDEDC
lbl_804DDEB0:
/* 804DDEB0  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 804DDEB4  7F C3 F3 78 */	mr r3, r30
/* 804DDEB8  7F 84 E3 78 */	mr r4, r28
/* 804DDEBC  38 C1 00 3C */	addi r6, r1, 0x3c
/* 804DDEC0  38 E0 00 00 */	li r7, 0
/* 804DDEC4  39 00 00 00 */	li r8, 0
/* 804DDEC8  48 00 FA C5 */	bl func_804ED98C
/* 804DDECC  2C 03 00 00 */	cmpwi r3, 0
/* 804DDED0  41 82 01 3C */	beq lbl_804DE00C
/* 804DDED4  38 60 00 01 */	li r3, 1
/* 804DDED8  48 00 03 0C */	b lbl_804DE1E4
lbl_804DDEDC:
/* 804DDEDC  7F C3 F3 78 */	mr r3, r30
/* 804DDEE0  38 80 00 00 */	li r4, 0
/* 804DDEE4  4B FF FE 79 */	bl Player_actor_Request_main_refuse_pickup_all
/* 804DDEE8  48 00 01 24 */	b lbl_804DE00C
lbl_804DDEEC:
/* 804DDEEC  28 04 00 00 */	cmplwi r4, 0
/* 804DDEF0  41 82 01 1C */	beq lbl_804DE00C
/* 804DDEF4  80 9D 60 8C */	lwz r4, 0x608c(r29)
/* 804DDEF8  38 61 00 30 */	addi r3, r1, 0x30
/* 804DDEFC  81 84 00 48 */	lwz r12, 0x48(r4)
/* 804DDF00  7D 89 03 A6 */	mtctr r12
/* 804DDF04  4E 80 04 21 */	bctrl 
/* 804DDF08  80 7D 60 8C */	lwz r3, 0x608c(r29)
/* 804DDF0C  81 83 00 4C */	lwz r12, 0x4c(r3)
/* 804DDF10  7D 89 03 A6 */	mtctr r12
/* 804DDF14  4E 80 04 21 */	bctrl 
/* 804DDF18  2C 03 00 01 */	cmpwi r3, 1
/* 804DDF1C  40 82 00 80 */	bne lbl_804DDF9C
/* 804DDF20  2C 1C 00 00 */	cmpwi r28, 0
/* 804DDF24  40 80 00 30 */	bge lbl_804DDF54
/* 804DDF28  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 804DDF2C  28 00 1B A8 */	cmplwi r0, 0x1ba8
/* 804DDF30  41 80 00 0C */	blt lbl_804DDF3C
/* 804DDF34  28 00 1B C7 */	cmplwi r0, 0x1bc7
/* 804DDF38  40 81 00 1C */	ble lbl_804DDF54
lbl_804DDF3C:
/* 804DDF3C  28 00 1D 88 */	cmplwi r0, 0x1d88
/* 804DDF40  41 80 00 0C */	blt lbl_804DDF4C
/* 804DDF44  28 00 1D A7 */	cmplwi r0, 0x1da7
/* 804DDF48  40 81 00 0C */	ble lbl_804DDF54
lbl_804DDF4C:
/* 804DDF4C  2C 1F 00 00 */	cmpwi r31, 0
/* 804DDF50  41 82 00 3C */	beq lbl_804DDF8C
lbl_804DDF54:
/* 804DDF54  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 804DDF58  38 80 00 01 */	li r4, 1
/* 804DDF5C  4B F0 85 C9 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 804DDF60  7C 65 1B 78 */	mr r5, r3
/* 804DDF64  7F C3 F3 78 */	mr r3, r30
/* 804DDF68  7F 84 E3 78 */	mr r4, r28
/* 804DDF6C  38 C1 00 30 */	addi r6, r1, 0x30
/* 804DDF70  38 E0 00 01 */	li r7, 1
/* 804DDF74  39 00 00 00 */	li r8, 0
/* 804DDF78  48 00 FA 15 */	bl func_804ED98C
/* 804DDF7C  2C 03 00 00 */	cmpwi r3, 0
/* 804DDF80  41 82 00 8C */	beq lbl_804DE00C
/* 804DDF84  38 60 00 01 */	li r3, 1
/* 804DDF88  48 00 02 5C */	b lbl_804DE1E4
lbl_804DDF8C:
/* 804DDF8C  7F C3 F3 78 */	mr r3, r30
/* 804DDF90  38 80 00 00 */	li r4, 0
/* 804DDF94  4B FF FD C9 */	bl Player_actor_Request_main_refuse_pickup_all
/* 804DDF98  48 00 00 74 */	b lbl_804DE00C
lbl_804DDF9C:
/* 804DDF9C  2C 1C 00 00 */	cmpwi r28, 0
/* 804DDFA0  40 80 00 30 */	bge lbl_804DDFD0
/* 804DDFA4  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 804DDFA8  28 00 1B A8 */	cmplwi r0, 0x1ba8
/* 804DDFAC  41 80 00 0C */	blt lbl_804DDFB8
/* 804DDFB0  28 00 1B C7 */	cmplwi r0, 0x1bc7
/* 804DDFB4  40 81 00 1C */	ble lbl_804DDFD0
lbl_804DDFB8:
/* 804DDFB8  28 00 1D 88 */	cmplwi r0, 0x1d88
/* 804DDFBC  41 80 00 0C */	blt lbl_804DDFC8
/* 804DDFC0  28 00 1D A7 */	cmplwi r0, 0x1da7
/* 804DDFC4  40 81 00 0C */	ble lbl_804DDFD0
lbl_804DDFC8:
/* 804DDFC8  2C 1F 00 00 */	cmpwi r31, 0
/* 804DDFCC  41 82 00 34 */	beq lbl_804DE000
lbl_804DDFD0:
/* 804DDFD0  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 804DDFD4  38 80 00 01 */	li r4, 1
/* 804DDFD8  4B F0 85 4D */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 804DDFDC  7C 65 1B 78 */	mr r5, r3
/* 804DDFE0  7F C3 F3 78 */	mr r3, r30
/* 804DDFE4  7F 84 E3 78 */	mr r4, r28
/* 804DDFE8  38 C1 00 30 */	addi r6, r1, 0x30
/* 804DDFEC  48 01 01 FD */	bl func_804EE1E8
/* 804DDFF0  2C 03 00 00 */	cmpwi r3, 0
/* 804DDFF4  41 82 00 18 */	beq lbl_804DE00C
/* 804DDFF8  38 60 00 01 */	li r3, 1
/* 804DDFFC  48 00 01 E8 */	b lbl_804DE1E4
lbl_804DE000:
/* 804DE000  7F C3 F3 78 */	mr r3, r30
/* 804DE004  38 80 00 00 */	li r4, 0
/* 804DE008  4B FF FD 55 */	bl Player_actor_Request_main_refuse_pickup_all
lbl_804DE00C:
/* 804DE00C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE010  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE014  3F A3 00 02 */	addis r29, r3, 2
/* 804DE018  80 7D 60 38 */	lwz r3, 0x6038(r29)
/* 804DE01C  28 03 00 00 */	cmplwi r3, 0
/* 804DE020  41 82 00 98 */	beq lbl_804DE0B8
/* 804DE024  81 83 00 00 */	lwz r12, 0(r3)
/* 804DE028  7F C3 F3 78 */	mr r3, r30
/* 804DE02C  7D 89 03 A6 */	mtctr r12
/* 804DE030  4E 80 04 21 */	bctrl 
/* 804DE034  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804DE038  7C 7C 1B 78 */	mr r28, r3
/* 804DE03C  28 00 25 30 */	cmplwi r0, 0x2530
/* 804DE040  40 82 00 78 */	bne lbl_804DE0B8
/* 804DE044  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE048  38 80 00 00 */	li r4, 0
/* 804DE04C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE050  38 A0 00 00 */	li r5, 0
/* 804DE054  3C 63 00 02 */	addis r3, r3, 2
/* 804DE058  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804DE05C  4B F0 27 15 */	bl mPr_GetPossessionItemIdxWithCond
/* 804DE060  7C 64 1B 79 */	or. r4, r3, r3
/* 804DE064  41 80 00 48 */	blt lbl_804DE0AC
/* 804DE068  81 5D 60 38 */	lwz r10, 0x6038(r29)
/* 804DE06C  7F C3 F3 78 */	mr r3, r30
/* 804DE070  7F 85 E3 78 */	mr r5, r28
/* 804DE074  38 C1 00 24 */	addi r6, r1, 0x24
/* 804DE078  81 2A 00 04 */	lwz r9, 4(r10)
/* 804DE07C  38 E0 00 00 */	li r7, 0
/* 804DE080  80 0A 00 08 */	lwz r0, 8(r10)
/* 804DE084  39 00 00 01 */	li r8, 1
/* 804DE088  91 21 00 24 */	stw r9, 0x24(r1)
/* 804DE08C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804DE090  80 0A 00 0C */	lwz r0, 0xc(r10)
/* 804DE094  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804DE098  48 00 F8 F5 */	bl func_804ED98C
/* 804DE09C  2C 03 00 00 */	cmpwi r3, 0
/* 804DE0A0  41 82 00 18 */	beq lbl_804DE0B8
/* 804DE0A4  38 60 00 01 */	li r3, 1
/* 804DE0A8  48 00 01 3C */	b lbl_804DE1E4
lbl_804DE0AC:
/* 804DE0AC  7F C3 F3 78 */	mr r3, r30
/* 804DE0B0  38 80 00 01 */	li r4, 1
/* 804DE0B4  4B FF FC A9 */	bl Player_actor_Request_main_refuse_pickup_all
lbl_804DE0B8:
/* 804DE0B8  7F C3 F3 78 */	mr r3, r30
/* 804DE0BC  4B EF B5 85 */	bl get_player_actor_withoutCheck
/* 804DE0C0  38 81 00 08 */	addi r4, r1, 8
/* 804DE0C4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804DE0C8  38 C1 00 18 */	addi r6, r1, 0x18
/* 804DE0CC  4B FF FB 55 */	bl Player_actor_check_putin_item
/* 804DE0D0  2C 03 00 00 */	cmpwi r3, 0
/* 804DE0D4  41 82 01 0C */	beq lbl_804DE1E0
/* 804DE0D8  38 61 00 08 */	addi r3, r1, 8
/* 804DE0DC  4B EF DA 71 */	bl mPlib_Get_space_putin_item_forTICKET
/* 804DE0E0  A0 81 00 08 */	lhz r4, 8(r1)
/* 804DE0E4  7C 7C 1B 78 */	mr r28, r3
/* 804DE0E8  38 00 00 00 */	li r0, 0
/* 804DE0EC  28 04 00 08 */	cmplwi r4, 8
/* 804DE0F0  41 80 00 10 */	blt lbl_804DE100
/* 804DE0F4  28 04 00 0A */	cmplwi r4, 0xa
/* 804DE0F8  41 81 00 08 */	bgt lbl_804DE100
/* 804DE0FC  38 00 00 01 */	li r0, 1
lbl_804DE100:
/* 804DE100  2C 00 00 00 */	cmpwi r0, 0
/* 804DE104  41 82 00 24 */	beq lbl_804DE128
/* 804DE108  7F C3 F3 78 */	mr r3, r30
/* 804DE10C  38 81 00 0C */	addi r4, r1, 0xc
/* 804DE110  38 A1 00 18 */	addi r5, r1, 0x18
/* 804DE114  48 02 52 31 */	bl func_80503344
/* 804DE118  2C 03 00 00 */	cmpwi r3, 0
/* 804DE11C  41 82 00 C4 */	beq lbl_804DE1E0
/* 804DE120  38 60 00 01 */	li r3, 1
/* 804DE124  48 00 00 C0 */	b lbl_804DE1E4
lbl_804DE128:
/* 804DE128  28 04 09 00 */	cmplwi r4, 0x900
/* 804DE12C  38 00 00 00 */	li r0, 0
/* 804DE130  41 80 00 10 */	blt lbl_804DE140
/* 804DE134  28 04 09 20 */	cmplwi r4, 0x920
/* 804DE138  41 81 00 08 */	bgt lbl_804DE140
/* 804DE13C  38 00 00 01 */	li r0, 1
lbl_804DE140:
/* 804DE140  2C 00 00 00 */	cmpwi r0, 0
/* 804DE144  38 00 25 1E */	li r0, 0x251e
/* 804DE148  40 82 00 08 */	bne lbl_804DE150
/* 804DE14C  7C 80 23 78 */	mr r0, r4
lbl_804DE150:
/* 804DE150  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 804DE154  7C 64 E8 50 */	subf r3, r4, r29
/* 804DE158  30 03 FF FF */	addic r0, r3, -1
/* 804DE15C  7F 60 19 10 */	subfe r27, r0, r3
/* 804DE160  4B EB CD 59 */	bl mEv_CheckTitleDemo
/* 804DE164  2C 03 00 00 */	cmpwi r3, 0
/* 804DE168  40 81 00 30 */	ble lbl_804DE198
/* 804DE16C  7F C3 F3 78 */	mr r3, r30
/* 804DE170  7F A4 EB 78 */	mr r4, r29
/* 804DE174  7F 68 DB 78 */	mr r8, r27
/* 804DE178  38 A1 00 0C */	addi r5, r1, 0xc
/* 804DE17C  38 C1 00 18 */	addi r6, r1, 0x18
/* 804DE180  38 E0 FF FF */	li r7, -1
/* 804DE184  48 00 F2 0D */	bl func_804ED390
/* 804DE188  2C 03 00 00 */	cmpwi r3, 0
/* 804DE18C  41 82 00 54 */	beq lbl_804DE1E0
/* 804DE190  38 60 00 01 */	li r3, 1
/* 804DE194  48 00 00 50 */	b lbl_804DE1E4
lbl_804DE198:
/* 804DE198  2C 1C 00 00 */	cmpwi r28, 0
/* 804DE19C  40 80 00 0C */	bge lbl_804DE1A8
/* 804DE1A0  2C 1F 00 00 */	cmpwi r31, 0
/* 804DE1A4  41 82 00 30 */	beq lbl_804DE1D4
lbl_804DE1A8:
/* 804DE1A8  7F C3 F3 78 */	mr r3, r30
/* 804DE1AC  7F A4 EB 78 */	mr r4, r29
/* 804DE1B0  7F 87 E3 78 */	mr r7, r28
/* 804DE1B4  7F 68 DB 78 */	mr r8, r27
/* 804DE1B8  38 A1 00 0C */	addi r5, r1, 0xc
/* 804DE1BC  38 C1 00 18 */	addi r6, r1, 0x18
/* 804DE1C0  48 00 F1 D1 */	bl func_804ED390
/* 804DE1C4  2C 03 00 00 */	cmpwi r3, 0
/* 804DE1C8  41 82 00 18 */	beq lbl_804DE1E0
/* 804DE1CC  38 60 00 01 */	li r3, 1
/* 804DE1D0  48 00 00 14 */	b lbl_804DE1E4
lbl_804DE1D4:
/* 804DE1D4  7F C3 F3 78 */	mr r3, r30
/* 804DE1D8  38 80 00 00 */	li r4, 0
/* 804DE1DC  4B FF FB 81 */	bl Player_actor_Request_main_refuse_pickup_all
lbl_804DE1E0:
/* 804DE1E0  38 60 00 00 */	li r3, 0
lbl_804DE1E4:
/* 804DE1E4  39 61 00 60 */	addi r11, r1, 0x60
/* 804DE1E8  4B BB CD 31 */	bl func_8009AF18
/* 804DE1EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804DE1F0  7C 08 03 A6 */	mtlr r0
/* 804DE1F4  38 21 00 60 */	addi r1, r1, 0x60
/* 804DE1F8  4E 80 00 20 */	blr 
