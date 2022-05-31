lbl_805FA6A4:
/* 805FA6A4  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805FA6A8  38 60 00 00 */	li r3, 0
/* 805FA6AC  41 82 00 50 */	beq lbl_805FA6FC
/* 805FA6B0  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805FA6B4  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FA6B8  4C 82 00 20 */	bnelr 
/* 805FA6BC  38 00 00 03 */	li r0, 3
/* 805FA6C0  90 04 00 3C */	stw r0, 0x3c(r4)
/* 805FA6C4  80 04 00 40 */	lwz r0, 0x40(r4)
/* 805FA6C8  2C 00 00 00 */	cmpwi r0, 0
/* 805FA6CC  41 82 00 0C */	beq lbl_805FA6D8
/* 805FA6D0  2C 00 00 01 */	cmpwi r0, 1
/* 805FA6D4  40 82 00 10 */	bne lbl_805FA6E4
lbl_805FA6D8:
/* 805FA6D8  38 00 00 00 */	li r0, 0
/* 805FA6DC  90 04 00 40 */	stw r0, 0x40(r4)
/* 805FA6E0  48 00 00 0C */	b lbl_805FA6EC
lbl_805FA6E4:
/* 805FA6E4  38 00 00 01 */	li r0, 1
/* 805FA6E8  90 04 00 40 */	stw r0, 0x40(r4)
lbl_805FA6EC:
/* 805FA6EC  38 00 00 17 */	li r0, 0x17
/* 805FA6F0  38 60 00 01 */	li r3, 1
/* 805FA6F4  90 04 00 38 */	stw r0, 0x38(r4)
/* 805FA6F8  4E 80 00 20 */	blr 
lbl_805FA6FC:
/* 805FA6FC  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805FA700  4D 82 00 20 */	beqlr 
/* 805FA704  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805FA708  2C 00 00 17 */	cmpwi r0, 0x17
/* 805FA70C  4C 82 00 20 */	bnelr 
/* 805FA710  38 00 00 00 */	li r0, 0
/* 805FA714  90 04 00 3C */	stw r0, 0x3c(r4)
/* 805FA718  80 04 00 40 */	lwz r0, 0x40(r4)
/* 805FA71C  2C 00 00 00 */	cmpwi r0, 0
/* 805FA720  40 82 00 10 */	bne lbl_805FA730
/* 805FA724  38 00 00 01 */	li r0, 1
/* 805FA728  90 04 00 40 */	stw r0, 0x40(r4)
/* 805FA72C  48 00 00 14 */	b lbl_805FA740
lbl_805FA730:
/* 805FA730  2C 00 00 01 */	cmpwi r0, 1
/* 805FA734  40 82 00 0C */	bne lbl_805FA740
/* 805FA738  38 00 00 02 */	li r0, 2
/* 805FA73C  90 04 00 40 */	stw r0, 0x40(r4)
lbl_805FA740:
/* 805FA740  38 00 00 18 */	li r0, 0x18
/* 805FA744  38 60 00 01 */	li r3, 1
/* 805FA748  90 04 00 38 */	stw r0, 0x38(r4)
/* 805FA74C  4E 80 00 20 */	blr 
