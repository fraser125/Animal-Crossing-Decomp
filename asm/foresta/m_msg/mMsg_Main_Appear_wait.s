lbl_803C57A4:
/* 803C57A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C57A8  7C 08 02 A6 */	mflr r0
/* 803C57AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C57B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C57B4  7C 9F 23 78 */	mr r31, r4
/* 803C57B8  93 C1 00 08 */	stw r30, 8(r1)
/* 803C57BC  7C 7E 1B 78 */	mr r30, r3
/* 803C57C0  80 63 04 0C */	lwz r3, 0x40c(r3)
/* 803C57C4  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 803C57C8  40 82 00 20 */	bne lbl_803C57E8
/* 803C57CC  60 60 00 04 */	ori r0, r3, 4
/* 803C57D0  90 1E 04 0C */	stw r0, 0x40c(r30)
/* 803C57D4  4B FF C9 A5 */	bl mMsg_sound_ZOOMUP
/* 803C57D8  7F C3 F3 78 */	mr r3, r30
/* 803C57DC  4B FF CD 39 */	bl mMsg_sound_spec_change_voice
/* 803C57E0  7F C3 F3 78 */	mr r3, r30
/* 803C57E4  4B FF CC A5 */	bl mMsg_sound_voice_mode
lbl_803C57E8:
/* 803C57E8  7F C3 F3 78 */	mr r3, r30
/* 803C57EC  7F E4 FB 78 */	mr r4, r31
/* 803C57F0  4B FF CE ED */	bl func_803C26DC
/* 803C57F4  7C 60 1B 78 */	mr r0, r3
/* 803C57F8  7F C3 F3 78 */	mr r3, r30
/* 803C57FC  7C 05 03 78 */	mr r5, r0
/* 803C5800  7F E4 FB 78 */	mr r4, r31
/* 803C5804  4B FF FF 55 */	bl func_803C5758
/* 803C5808  7F C3 F3 78 */	mr r3, r30
/* 803C580C  7F E4 FB 78 */	mr r4, r31
/* 803C5810  4B FF 9B 6D */	bl func_803BF37C
/* 803C5814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C581C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C5820  7C 08 03 A6 */	mtlr r0
/* 803C5824  38 21 00 10 */	addi r1, r1, 0x10
/* 803C5828  4E 80 00 20 */	blr 
