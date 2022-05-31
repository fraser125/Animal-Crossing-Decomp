lbl_8041F748:
/* 8041F748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041F74C  7C 08 02 A6 */	mflr r0
/* 8041F750  38 A0 00 07 */	li r5, 7
/* 8041F754  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041F758  4B FF D4 59 */	bl show_actor_at_wade_checkless
/* 8041F75C  3C 03 00 01 */	addis r0, r3, 1
/* 8041F760  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041F764  40 82 00 0C */	bne lbl_8041F770
/* 8041F768  38 60 00 02 */	li r3, 2
/* 8041F76C  48 00 00 0C */	b lbl_8041F778
lbl_8041F770:
/* 8041F770  30 03 FF FF */	addic r0, r3, -1
/* 8041F774  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041F778:
/* 8041F778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041F77C  7C 08 03 A6 */	mtlr r0
/* 8041F780  38 21 00 10 */	addi r1, r1, 0x10
/* 8041F784  4E 80 00 20 */	blr 
