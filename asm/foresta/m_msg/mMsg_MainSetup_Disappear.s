lbl_803C56B8:
/* 803C56B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C56BC  7C 08 02 A6 */	mflr r0
/* 803C56C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C56C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C56C8  7C 7F 1B 78 */	mr r31, r3
/* 803C56CC  4B FF CE 91 */	bl mMsg_sound_spec_change_scene
/* 803C56D0  38 00 00 04 */	li r0, 4
/* 803C56D4  3C 60 80 64 */	lis r3, lit_947@ha /* 0x80642630@ha */
/* 803C56D8  90 1F 04 34 */	stw r0, 0x434(r31)
/* 803C56DC  38 83 26 30 */	addi r4, r3, lit_947@l /* 0x80642630@l */
/* 803C56E0  38 00 00 01 */	li r0, 1
/* 803C56E4  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C56E8  90 1F 04 38 */	stw r0, 0x438(r31)
/* 803C56EC  38 00 00 00 */	li r0, 0
/* 803C56F0  C0 24 00 00 */	lfs f1, 0(r4)
/* 803C56F4  C0 03 26 18 */	lfs f0, lit_725@l(r3)  /* 0x80642618@l */
/* 803C56F8  D0 3F 04 24 */	stfs f1, 0x424(r31)
/* 803C56FC  D0 3F 04 28 */	stfs f1, 0x428(r31)
/* 803C5700  D0 1F 04 10 */	stfs f0, 0x410(r31)
/* 803C5704  90 1F 00 34 */	stw r0, 0x34(r31)
/* 803C5708  4B FD 2F E1 */	bl mDemo_Get_use_zoom_sound
/* 803C570C  2C 03 00 00 */	cmpwi r3, 0
/* 803C5710  41 82 00 24 */	beq lbl_803C5734
/* 803C5714  4B FD 32 25 */	bl mDemo_Get_camera
/* 803C5718  2C 03 00 00 */	cmpwi r3, 0
/* 803C571C  40 82 00 10 */	bne lbl_803C572C
/* 803C5720  7F E3 FB 78 */	mr r3, r31
/* 803C5724  4B FF CA 7D */	bl mMsg_sound_ZOOMDOWN_SHORT
/* 803C5728  48 00 00 0C */	b lbl_803C5734
lbl_803C572C:
/* 803C572C  7F E3 FB 78 */	mr r3, r31
/* 803C5730  4B FF CA A5 */	bl mMsg_sound_ZOOMDOWN_LONG
lbl_803C5734:
/* 803C5734  38 60 FF FF */	li r3, -1
/* 803C5738  38 00 00 04 */	li r0, 4
/* 803C573C  90 7F 04 2C */	stw r3, 0x42c(r31)
/* 803C5740  90 1F 04 30 */	stw r0, 0x430(r31)
/* 803C5744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C5748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C574C  7C 08 03 A6 */	mtlr r0
/* 803C5750  38 21 00 10 */	addi r1, r1, 0x10
/* 803C5754  4E 80 00 20 */	blr 
