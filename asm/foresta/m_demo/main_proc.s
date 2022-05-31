lbl_80399F94:
/* 80399F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399F98  7C 08 02 A6 */	mflr r0
/* 80399F9C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399FA4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399FA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80399FAC  48 03 F6 95 */	bl get_player_actor_withoutCheck
/* 80399FB0  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399FB4  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80399FB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80399FBC  80 04 00 DC */	lwz r0, 0xdc(r4)
/* 80399FC0  2C 00 00 09 */	cmpwi r0, 9
/* 80399FC4  40 82 00 98 */	bne lbl_8039A05C
/* 80399FC8  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80399FCC  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 80399FD0  90 03 00 20 */	stw r0, 0x20(r3)
/* 80399FD4  80 64 00 E0 */	lwz r3, 0xe0(r4)
/* 80399FD8  28 03 00 00 */	cmplwi r3, 0
/* 80399FDC  41 82 00 10 */	beq lbl_80399FEC
/* 80399FE0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80399FE4  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 80399FE8  90 03 00 20 */	stw r0, 0x20(r3)
lbl_80399FEC:
/* 80399FEC  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399FF0  38 00 00 01 */	li r0, 1
/* 80399FF4  80 83 1C BC */	lwz r4, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 80399FF8  90 04 02 F8 */	stw r0, 0x2f8(r4)
/* 80399FFC  80 64 02 FC */	lwz r3, 0x2fc(r4)
/* 8039A000  2C 03 00 00 */	cmpwi r3, 0
/* 8039A004  41 82 00 18 */	beq lbl_8039A01C
/* 8039A008  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 8039A00C  28 00 00 00 */	cmplwi r0, 0
/* 8039A010  41 82 00 0C */	beq lbl_8039A01C
/* 8039A014  4B FF E9 79 */	bl change_camera
/* 8039A018  48 00 00 0C */	b lbl_8039A024
lbl_8039A01C:
/* 8039A01C  80 64 02 F8 */	lwz r3, 0x2f8(r4)
/* 8039A020  4B FF E9 6D */	bl change_camera
lbl_8039A024:
/* 8039A024  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A028  38 00 00 00 */	li r0, 0
/* 8039A02C  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A030  38 80 00 00 */	li r4, 0
/* 8039A034  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A038  38 A0 00 10 */	li r5, 0x10
/* 8039A03C  90 03 02 FC */	stw r0, 0x2fc(r3)
/* 8039A040  38 63 00 E0 */	addi r3, r3, 0xe0
/* 8039A044  4B C6 93 65 */	bl func_800033A8
/* 8039A048  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A04C  38 00 00 00 */	li r0, 0
/* 8039A050  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A054  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A058  90 03 00 DC */	stw r0, 0xdc(r3)
lbl_8039A05C:
/* 8039A05C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A060  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A064  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A068  80 83 03 2C */	lwz r4, 0x32c(r3)
/* 8039A06C  2C 04 00 00 */	cmpwi r4, 0
/* 8039A070  41 82 00 30 */	beq lbl_8039A0A0
/* 8039A074  80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 8039A078  7C 04 00 00 */	cmpw r4, r0
/* 8039A07C  40 82 00 24 */	bne lbl_8039A0A0
/* 8039A080  4B FF FD 09 */	bl check_speech_request
/* 8039A084  2C 03 00 01 */	cmpwi r3, 1
/* 8039A088  40 82 00 18 */	bne lbl_8039A0A0
/* 8039A08C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A090  38 00 00 00 */	li r0, 0
/* 8039A094  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A098  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A09C  90 03 00 DC */	stw r0, 0xdc(r3)
lbl_8039A0A0:
/* 8039A0A0  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A0A4  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A0A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A0AC  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8039A0B0  2C 00 00 00 */	cmpwi r0, 0
/* 8039A0B4  40 82 00 08 */	bne lbl_8039A0BC
/* 8039A0B8  4B FF FC 19 */	bl choice_demo
lbl_8039A0BC:
/* 8039A0BC  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A0C0  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A0C4  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A0C8  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8039A0CC  2C 00 00 00 */	cmpwi r0, 0
/* 8039A0D0  41 82 00 08 */	beq lbl_8039A0D8
/* 8039A0D4  4B FF FD FD */	bl run_demo
lbl_8039A0D8:
/* 8039A0D8  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A0DC  80 83 1C BC */	lwz r4, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 8039A0E0  80 04 00 DC */	lwz r0, 0xdc(r4)
/* 8039A0E4  2C 00 00 09 */	cmpwi r0, 9
/* 8039A0E8  40 82 00 48 */	bne lbl_8039A130
/* 8039A0EC  80 64 03 2C */	lwz r3, 0x32c(r4)
/* 8039A0F0  2C 03 00 00 */	cmpwi r3, 0
/* 8039A0F4  41 82 00 3C */	beq lbl_8039A130
/* 8039A0F8  80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 8039A0FC  7C 03 00 00 */	cmpw r3, r0
/* 8039A100  41 82 00 30 */	beq lbl_8039A130
/* 8039A104  38 64 00 E0 */	addi r3, r4, 0xe0
/* 8039A108  38 84 03 28 */	addi r4, r4, 0x328
/* 8039A10C  38 A0 00 10 */	li r5, 0x10
/* 8039A110  4B C6 93 81 */	bl memcpy
/* 8039A114  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A118  38 00 00 02 */	li r0, 2
/* 8039A11C  38 83 1C BC */	addi r4, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A120  38 60 00 0D */	li r3, 0xd
/* 8039A124  80 84 00 00 */	lwz r4, 0(r4)
/* 8039A128  90 04 00 DC */	stw r0, 0xdc(r4)
/* 8039A12C  4B FF E8 61 */	bl change_camera
lbl_8039A130:
/* 8039A130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A134  7C 08 03 A6 */	mtlr r0
/* 8039A138  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A13C  4E 80 00 20 */	blr 
