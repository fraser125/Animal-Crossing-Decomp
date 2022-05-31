lbl_805FA040:
/* 805FA040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FA044  7C 08 02 A6 */	mflr r0
/* 805FA048  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FA04C  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805FA050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FA054  93 C1 00 08 */	stw r30, 8(r1)
/* 805FA058  7C 9E 23 78 */	mr r30, r4
/* 805FA05C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FA060  83 E6 09 80 */	lwz r31, 0x980(r6)
/* 805FA064  41 82 00 B8 */	beq lbl_805FA11C
/* 805FA068  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA06C  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FA070  41 82 00 0C */	beq lbl_805FA07C
/* 805FA074  2C 00 00 09 */	cmpwi r0, 9
/* 805FA078  40 82 00 18 */	bne lbl_805FA090
lbl_805FA07C:
/* 805FA07C  38 00 00 01 */	li r0, 1
/* 805FA080  38 60 00 01 */	li r3, 1
/* 805FA084  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA088  90 1E 00 38 */	stw r0, 0x38(r30)
/* 805FA08C  48 00 01 D8 */	b lbl_805FA264
lbl_805FA090:
/* 805FA090  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FA094  40 82 01 CC */	bne lbl_805FA260
/* 805FA098  38 80 00 09 */	li r4, 9
/* 805FA09C  38 00 00 03 */	li r0, 3
/* 805FA0A0  90 9E 00 38 */	stw r4, 0x38(r30)
/* 805FA0A4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA0A8  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FA0AC  2C 04 00 02 */	cmpwi r4, 2
/* 805FA0B0  40 80 00 10 */	bge lbl_805FA0C0
/* 805FA0B4  38 00 00 00 */	li r0, 0
/* 805FA0B8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA0BC  48 00 00 44 */	b lbl_805FA100
lbl_805FA0C0:
/* 805FA0C0  2C 04 00 04 */	cmpwi r4, 4
/* 805FA0C4  40 80 00 10 */	bge lbl_805FA0D4
/* 805FA0C8  38 00 00 01 */	li r0, 1
/* 805FA0CC  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA0D0  48 00 00 30 */	b lbl_805FA100
lbl_805FA0D4:
/* 805FA0D4  2C 04 00 06 */	cmpwi r4, 6
/* 805FA0D8  40 80 00 10 */	bge lbl_805FA0E8
/* 805FA0DC  38 00 00 02 */	li r0, 2
/* 805FA0E0  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA0E4  48 00 00 1C */	b lbl_805FA100
lbl_805FA0E8:
/* 805FA0E8  2C 04 00 07 */	cmpwi r4, 7
/* 805FA0EC  40 80 00 0C */	bge lbl_805FA0F8
/* 805FA0F0  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA0F4  48 00 00 0C */	b lbl_805FA100
lbl_805FA0F8:
/* 805FA0F8  38 00 00 04 */	li r0, 4
/* 805FA0FC  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_805FA100:
/* 805FA100  4B FF 54 E5 */	bl func_805EF5E4
/* 805FA104  2C 03 00 00 */	cmpwi r3, 0
/* 805FA108  40 82 00 0C */	bne lbl_805FA114
/* 805FA10C  38 00 00 05 */	li r0, 5
/* 805FA110  B0 1F 02 32 */	sth r0, 0x232(r31)
lbl_805FA114:
/* 805FA114  38 60 00 01 */	li r3, 1
/* 805FA118  48 00 01 4C */	b lbl_805FA264
lbl_805FA11C:
/* 805FA11C  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 805FA120  41 82 00 2C */	beq lbl_805FA14C
/* 805FA124  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA128  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FA12C  40 82 01 34 */	bne lbl_805FA260
/* 805FA130  38 60 00 09 */	li r3, 9
/* 805FA134  38 00 00 00 */	li r0, 0
/* 805FA138  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA13C  38 60 00 01 */	li r3, 1
/* 805FA140  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA144  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA148  48 00 01 1C */	b lbl_805FA264
lbl_805FA14C:
/* 805FA14C  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 805FA150  41 82 00 3C */	beq lbl_805FA18C
/* 805FA154  38 7F 02 36 */	addi r3, r31, 0x236
/* 805FA158  4B DC 26 49 */	bl mMl_check_not_used_mail
/* 805FA15C  2C 03 00 01 */	cmpwi r3, 1
/* 805FA160  40 82 01 00 */	bne lbl_805FA260
/* 805FA164  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA168  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FA16C  41 82 00 F4 */	beq lbl_805FA260
/* 805FA170  38 60 00 0B */	li r3, 0xb
/* 805FA174  38 00 00 00 */	li r0, 0
/* 805FA178  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA17C  38 60 00 01 */	li r3, 1
/* 805FA180  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA184  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA188  48 00 00 DC */	b lbl_805FA264
lbl_805FA18C:
/* 805FA18C  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805FA190  41 82 00 D0 */	beq lbl_805FA260
/* 805FA194  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA198  2C 00 00 01 */	cmpwi r0, 1
/* 805FA19C  40 82 00 1C */	bne lbl_805FA1B8
/* 805FA1A0  38 60 00 09 */	li r3, 9
/* 805FA1A4  38 00 00 00 */	li r0, 0
/* 805FA1A8  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA1AC  38 60 00 01 */	li r3, 1
/* 805FA1B0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA1B4  48 00 00 B0 */	b lbl_805FA264
lbl_805FA1B8:
/* 805FA1B8  2C 00 00 0B */	cmpwi r0, 0xb
/* 805FA1BC  40 82 00 14 */	bne lbl_805FA1D0
/* 805FA1C0  38 00 00 0A */	li r0, 0xa
/* 805FA1C4  38 60 00 01 */	li r3, 1
/* 805FA1C8  90 1E 00 38 */	stw r0, 0x38(r30)
/* 805FA1CC  48 00 00 98 */	b lbl_805FA264
lbl_805FA1D0:
/* 805FA1D0  2C 00 00 09 */	cmpwi r0, 9
/* 805FA1D4  40 82 00 8C */	bne lbl_805FA260
/* 805FA1D8  38 80 00 0A */	li r4, 0xa
/* 805FA1DC  38 00 00 00 */	li r0, 0
/* 805FA1E0  90 9E 00 38 */	stw r4, 0x38(r30)
/* 805FA1E4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA1E8  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805FA1EC  2C 00 00 00 */	cmpwi r0, 0
/* 805FA1F0  40 82 00 10 */	bne lbl_805FA200
/* 805FA1F4  38 00 00 01 */	li r0, 1
/* 805FA1F8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA1FC  48 00 00 48 */	b lbl_805FA244
lbl_805FA200:
/* 805FA200  2C 00 00 01 */	cmpwi r0, 1
/* 805FA204  40 82 00 10 */	bne lbl_805FA214
/* 805FA208  38 00 00 03 */	li r0, 3
/* 805FA20C  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA210  48 00 00 34 */	b lbl_805FA244
lbl_805FA214:
/* 805FA214  2C 00 00 02 */	cmpwi r0, 2
/* 805FA218  40 82 00 10 */	bne lbl_805FA228
/* 805FA21C  38 00 00 04 */	li r0, 4
/* 805FA220  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA224  48 00 00 20 */	b lbl_805FA244
lbl_805FA228:
/* 805FA228  2C 00 00 03 */	cmpwi r0, 3
/* 805FA22C  40 82 00 10 */	bne lbl_805FA23C
/* 805FA230  38 00 00 06 */	li r0, 6
/* 805FA234  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA238  48 00 00 0C */	b lbl_805FA244
lbl_805FA23C:
/* 805FA23C  38 00 00 07 */	li r0, 7
/* 805FA240  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_805FA244:
/* 805FA244  4B FF 53 A1 */	bl func_805EF5E4
/* 805FA248  2C 03 00 00 */	cmpwi r3, 0
/* 805FA24C  40 82 00 0C */	bne lbl_805FA258
/* 805FA250  38 00 00 04 */	li r0, 4
/* 805FA254  B0 1F 02 32 */	sth r0, 0x232(r31)
lbl_805FA258:
/* 805FA258  38 60 00 01 */	li r3, 1
/* 805FA25C  48 00 00 08 */	b lbl_805FA264
lbl_805FA260:
/* 805FA260  38 60 00 00 */	li r3, 0
lbl_805FA264:
/* 805FA264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FA268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FA26C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FA270  7C 08 03 A6 */	mtlr r0
/* 805FA274  38 21 00 10 */	addi r1, r1, 0x10
/* 805FA278  4E 80 00 20 */	blr 
